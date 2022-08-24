FROM registry.gitlab.com/musicscience37/cpp-base-image-docker:jammy

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    lsb-release \
    software-properties-common \
    gpg-agent && \
    wget -nv https://apt.llvm.org/llvm.sh && \
    bash llvm.sh 13 all && \
    rm llvm.sh && \
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
