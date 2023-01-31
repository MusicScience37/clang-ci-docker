FROM registry.gitlab.com/musicscience37projects/docker/cpp-base-image-docker:kinetic

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    llvm-14-dev \
    clang-14 \
    clangd-14 \
    libclang-14-dev \
    libc++-14-dev \
    libc++abi-14-dev \
    libomp-14-dev \
    clang-format-14 \
    clang-tidy-14 && \
    apt-get autoremove && \
    apt-get autoclean && \
    rm -r /var/lib/apt/lists/* && \
    ln -s "$(command -v clang-14)" /usr/local/bin/clang && \
    ln -s "$(command -v clang++-14)" /usr/local/bin/clang++ && \
    ln -s "$(command -v clangd-14)" /usr/local/bin/clangd && \
    ln -s "$(command -v clang-format-14)" /usr/local/bin/clang-format && \
    ln -s "$(command -v clang-tidy-14)" /usr/local/bin/clang-tidy && \
    ln -s "$(command -v llvm-profdata-14)" /usr/local/bin/llvm-profdata && \
    ln -s "$(command -v llvm-cov-14)" /usr/local/bin/llvm-cov

ENV CC=/usr/local/bin/clang
ENV CXX=/usr/local/bin/clang++

WORKDIR /root
