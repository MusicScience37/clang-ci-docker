FROM registry.gitlab.com/musicscience37_ci/cpp-base-image-docker:focal-v4-3

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    llvm-11-dev=1:11.0.0-2~ubuntu20.04.1 \
    clang-11=1:11.0.0-2~ubuntu20.04.1 \
    libclang-11-dev=1:11.0.0-2~ubuntu20.04.1 \
    libc++-11-dev=1:11.0.0-2~ubuntu20.04.1 \
    libc++abi-11-dev=1:11.0.0-2~ubuntu20.04.1 \
    libomp-11-dev=1:11.0.0-2~ubuntu20.04.1 \
    clang-format-11=1:11.0.0-2~ubuntu20.04.1 \
    clang-tidy-11=1:11.0.0-2~ubuntu20.04.1 && \
    apt-get autoremove && \
    apt-get autoclean && \
    rm -r /var/lib/apt/lists/* && \
    ln -s "$(command -v clang-11)" /usr/local/bin/clang && \
    ln -s "$(command -v clang++-11)" /usr/local/bin/clang++ && \
    ln -s "$(command -v clang-format-11)" /usr/local/bin/clang-format && \
    ln -s "$(command -v clang-tidy-11)" /usr/local/bin/clang-tidy && \
    ln -s "$(command -v llvm-profdata-11)" /usr/local/bin/llvm-profdata && \
    ln -s "$(command -v llvm-cov-11)" /usr/local/bin/llvm-cov

ENV CC=/usr/local/bin/clang
ENV CXX=/usr/local/bin/clang++

WORKDIR /root
