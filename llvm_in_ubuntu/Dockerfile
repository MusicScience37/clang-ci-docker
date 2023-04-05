ARG UBUNTU_VERSION

FROM registry.gitlab.com/musicscience37projects/docker/cpp-base-image-docker:${UBUNTU_VERSION}

ARG LLVM_VERSION
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    llvm-${LLVM_VERSION}-dev \
    clang-${LLVM_VERSION} \
    clangd-${LLVM_VERSION} \
    libclang-${LLVM_VERSION}-dev \
    libc++-${LLVM_VERSION}-dev \
    libc++abi-${LLVM_VERSION}-dev \
    libomp-${LLVM_VERSION}-dev \
    clang-format-${LLVM_VERSION} \
    clang-tidy-${LLVM_VERSION} && \
    apt-get autoremove && \
    apt-get autoclean && \
    rm -r /var/lib/apt/lists/* && \
    ln -s "$(command -v clang-${LLVM_VERSION})" /usr/local/bin/clang && \
    ln -s "$(command -v clang++-${LLVM_VERSION})" /usr/local/bin/clang++ && \
    ln -s "$(command -v clangd-${LLVM_VERSION})" /usr/local/bin/clangd && \
    ln -s "$(command -v clang-format-${LLVM_VERSION})" /usr/local/bin/clang-format && \
    ln -s "$(command -v clang-tidy-${LLVM_VERSION})" /usr/local/bin/clang-tidy && \
    ln -s "$(command -v llvm-profdata-${LLVM_VERSION})" /usr/local/bin/llvm-profdata && \
    ln -s "$(command -v llvm-cov-${LLVM_VERSION})" /usr/local/bin/llvm-cov

ENV CC=/usr/local/bin/clang
ENV CXX=/usr/local/bin/clang++

WORKDIR /root
