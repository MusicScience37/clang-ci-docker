FROM registry.gitlab.com/musicscience37/cpp-base-image-docker:focal-v5-0

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    llvm-12-dev=1:12.0.0-3ubuntu1~20.04.5 \
    clang-12=1:12.0.0-3ubuntu1~20.04.5 \
    libclang-12-dev=1:12.0.0-3ubuntu1~20.04.5 \
    libc++-12-dev=1:12.0.0-3ubuntu1~20.04.5 \
    libc++abi-12-dev=1:12.0.0-3ubuntu1~20.04.5 \
    libomp-12-dev=1:12.0.0-3ubuntu1~20.04.5 \
    clang-format-12=1:12.0.0-3ubuntu1~20.04.5 \
    clang-tidy-12=1:12.0.0-3ubuntu1~20.04.5 && \
    apt-get autoremove && \
    apt-get autoclean && \
    rm -r /var/lib/apt/lists/* && \
    ln -s "$(command -v clang-12)" /usr/local/bin/clang && \
    ln -s "$(command -v clang++-12)" /usr/local/bin/clang++ && \
    ln -s "$(command -v clang-format-12)" /usr/local/bin/clang-format && \
    ln -s "$(command -v clang-tidy-12)" /usr/local/bin/clang-tidy && \
    ln -s "$(command -v llvm-profdata-12)" /usr/local/bin/llvm-profdata && \
    ln -s "$(command -v llvm-cov-12)" /usr/local/bin/llvm-cov

ENV CC=/usr/local/bin/clang
ENV CXX=/usr/local/bin/clang++

WORKDIR /root
