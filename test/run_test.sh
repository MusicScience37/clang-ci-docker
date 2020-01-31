#!/bin/bash -e

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <type>" >&2
  exit 1
fi

DIR=build_$1

cd $(dirname $0)
rm -rf $DIR
mkdir $DIR
cd $DIR

cmake .. \
  "-DCMAKE_C_FLAGS=-fprofile-instr-generate -fcoverage-mapping" \
  "-DCMAKE_CXX_FLAGS=-fprofile-instr-generate -fcoverage-mapping" \
  "-DCMAKE_MODULE_LINKER_FLAGS=-fprofile-instr-generate -fcoverage-mapping"
cmake --build .
mkdir coverage
export LLVM_PROFILE_FILE=$(pwd)/coverage/coverage_%p.profraw
ctest -V .

cd coverage
llvm-profdata merge -o coverage.profdata coverage_*.profraw
llvm-cov show -instr-profile=coverage.profdata \
    -object ../test_c -object ../test_cpp \
    > coverage.txt
llvm-cov show -instr-profile=coverage.profdata \
    -object ../test_c -object ../test_cpp \
    -format=html -output-dir=html
llvm-cov report -instr-profile=coverage.profdata \
    -object ../test_c -object ../test_cpp \
    | tee coverage_summary.txt
line_cov=$(cat coverage_summary.txt | awk '{ if (NF > 0) { last = $NF } } END { print last }')
echo "Line Coverage: $line_cov"
