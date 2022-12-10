FROM registry.gitlab.com/musicscience37projects/docker/cpp-base-image-docker:focal

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    llvm-11-dev \
    clang-11 \
    libclang-11-dev \
    libc++-11-dev \
    libc++abi-11-dev \
    libomp-11-dev \
    clang-format-11 \
    clang-tidy-11 && \
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
