FROM registry.gitlab.com/musicscience37_ci/cpp-base-image-docker:v0-1

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        llvm-9-dev=1:9-2 \
        clang-9=1:9-2 \
        libomp-9-dev=1:9-2 \
        clang-format-9=1:9-2 \
        clang-tidy-9=1:9-2 && \
    apt-get autoremove && \
    apt-get autoclean && \
    rm -r /var/lib/apt/lists/* && \
    ln -s "$(command -v clang-9)" /usr/local/bin/clang && \
    ln -s "$(command -v clang++-9)" /usr/local/bin/clang++ && \
    ln -s "$(command -v clang-format-9)" /usr/local/bin/clang-format && \
    ln -s "$(command -v clang-tidy-9)" /usr/local/bin/clang-tidy && \
    ln -s "$(command -v llvm-profdata-9)" /usr/local/bin/llvm-profdata && \
    ln -s "$(command -v llvm-cov-9)" /usr/local/bin/llvm-cov

ENV CC=/usr/local/bin/clang
ENV CXX=/usr/local/bin/clang++

WORKDIR /root
