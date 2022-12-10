FROM registry.gitlab.com/musicscience37projects/docker/cpp-base-image-docker:focal

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    llvm-12-dev \
    clang-12 \
    libclang-12-dev \
    libc++-12-dev \
    libc++abi-12-dev \
    libomp-12-dev \
    clang-format-12 \
    clang-tidy-12 && \
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
