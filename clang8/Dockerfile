FROM registry.gitlab.com/musicscience37_ci/cpp-base-image-docker:v1-1

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        llvm-8-dev=1:8.0.1-3build1 \
        clang-8=1:8.0.1-3build1 \
        libomp-8-dev=1:8.0.1-3build1 \
        clang-format-8=1:8.0.1-3build1 \
        clang-tidy-8=1:8.0.1-3build1 && \
    apt-get autoremove && \
    apt-get autoclean && \
    rm -r /var/lib/apt/lists/* && \
    ln -s "$(command -v clang-8)" /usr/local/bin/clang && \
    ln -s "$(command -v clang++-8)" /usr/local/bin/clang++ && \
    ln -s "$(command -v clang-format-8)" /usr/local/bin/clang-format && \
    ln -s "$(command -v clang-tidy-8)" /usr/local/bin/clang-tidy && \
    ln -s "$(command -v llvm-profdata-8)" /usr/local/bin/llvm-profdata && \
    ln -s "$(command -v llvm-cov-8)" /usr/local/bin/llvm-cov

ENV CC=/usr/local/bin/clang
ENV CXX=/usr/local/bin/clang++

WORKDIR /root
