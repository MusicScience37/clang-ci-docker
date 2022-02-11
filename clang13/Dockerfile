FROM registry.gitlab.com/musicscience37_ci/cpp-base-image-docker:jammy-v4-1

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    llvm-13-dev=1:13.0.0-9 \
    clang-13=1:13.0.0-9 \
    libclang-13-dev=1:13.0.0-9 \
    libc++-13-dev=1:13.0.0-9 \
    libc++abi-13-dev=1:13.0.0-9 \
    libomp-13-dev=1:13.0.0-9 \
    clang-format-13=1:13.0.0-9 \
    clang-tidy-13=1:13.0.0-9 && \
    apt-get autoremove && \
    apt-get autoclean && \
    rm -r /var/lib/apt/lists/* && \
    ln -s "$(command -v clang-13)" /usr/local/bin/clang && \
    ln -s "$(command -v clang++-13)" /usr/local/bin/clang++ && \
    ln -s "$(command -v clang-format-13)" /usr/local/bin/clang-format && \
    ln -s "$(command -v clang-tidy-13)" /usr/local/bin/clang-tidy && \
    ln -s "$(command -v llvm-profdata-13)" /usr/local/bin/llvm-profdata && \
    ln -s "$(command -v llvm-cov-13)" /usr/local/bin/llvm-cov

ENV CC=/usr/local/bin/clang
ENV CXX=/usr/local/bin/clang++

WORKDIR /root
