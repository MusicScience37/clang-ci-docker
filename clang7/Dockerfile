FROM registry.gitlab.com/musicscience37_ci/cpp-base-image-docker:v2-1

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        llvm-7-dev=1:7.0.1-12 \
        clang-7=1:7.0.1-12 \
        libomp-7-dev=1:7.0.1-12 \
        clang-format-7=1:7.0.1-12 \
        clang-tidy-7=1:7.0.1-12 && \
    apt-get autoremove && \
    apt-get autoclean && \
    rm -r /var/lib/apt/lists/* && \
    ln -s "$(command -v clang-7)" /usr/local/bin/clang && \
    ln -s "$(command -v clang++-7)" /usr/local/bin/clang++ && \
    ln -s "$(command -v clang-format-7)" /usr/local/bin/clang-format && \
    ln -s "$(command -v clang-tidy-7)" /usr/local/bin/clang-tidy && \
    ln -s "$(command -v llvm-profdata-7)" /usr/local/bin/llvm-profdata && \
    ln -s "$(command -v llvm-cov-7)" /usr/local/bin/llvm-cov

ENV CC=/usr/local/bin/clang
ENV CXX=/usr/local/bin/clang++

WORKDIR /root
