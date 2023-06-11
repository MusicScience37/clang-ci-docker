ARG UBUNTU_VERSION

FROM registry.gitlab.com/musicscience37projects/docker/cpp-base-image-docker:${UBUNTU_VERSION}

ARG LLVM_VERSION
RUN apt-get update && \
    apt-get install -y \
    llvm-${LLVM_VERSION}-dev \
    clang-${LLVM_VERSION} \
    clangd-${LLVM_VERSION} \
    libclang-${LLVM_VERSION}-dev \
    libc++-${LLVM_VERSION}-dev \
    libc++abi-${LLVM_VERSION}-dev \
    libomp-${LLVM_VERSION}-dev \
    clang-format-${LLVM_VERSION} \
    clang-tidy-${LLVM_VERSION} \
    && \
    apt-get autoremove && \
    apt-get autoclean && \
    rm -r /var/lib/apt/lists/* && \
    update-alternatives --install /usr/bin/clang clang "$(command -v clang-${LLVM_VERSION})" 10000 && \
    update-alternatives --install /usr/bin/clang++ clang++ "$(command -v clang++-${LLVM_VERSION})" 10000 && \
    update-alternatives --install /usr/bin/clangd clangd "$(command -v clangd-${LLVM_VERSION})" 10000 && \
    update-alternatives --install /usr/bin/clang-format clang-format "$(command -v clang-format-${LLVM_VERSION})" 10000 && \
    update-alternatives --install /usr/bin/clang-tidy clang-tidy "$(command -v clang-tidy-${LLVM_VERSION})" 10000 && \
    update-alternatives --install /usr/bin/llvm-profdata llvm-profdata "$(command -v llvm-profdata-${LLVM_VERSION})" 10000 && \
    update-alternatives --install /usr/bin/llvm-cov llvm-cov "$(command -v llvm-cov-${LLVM_VERSION})" 10000

ENV CC=/usr/bin/clang
ENV CXX=/usr/bin/clang++

WORKDIR /root
