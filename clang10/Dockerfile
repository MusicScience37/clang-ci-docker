FROM registry.gitlab.com/musicscience37_ci/cpp-base-image-docker:v2-2

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        llvm-10-dev=1:10.0.0-4ubuntu1 \
        clang-10=1:10.0.0-4ubuntu1 \
        libomp-10-dev=1:10.0.0-4ubuntu1 \
        clang-format-10=1:10.0.0-4ubuntu1 \
        clang-tidy-10=1:10.0.0-4ubuntu1 && \
    apt-get autoremove && \
    apt-get autoclean && \
    rm -r /var/lib/apt/lists/* && \
    ln -s "$(command -v clang-10)" /usr/local/bin/clang && \
    ln -s "$(command -v clang++-10)" /usr/local/bin/clang++ && \
    ln -s "$(command -v clang-format-10)" /usr/local/bin/clang-format && \
    ln -s "$(command -v clang-tidy-10)" /usr/local/bin/clang-tidy && \
    ln -s "$(command -v llvm-profdata-10)" /usr/local/bin/llvm-profdata && \
    ln -s "$(command -v llvm-cov-10)" /usr/local/bin/llvm-cov

ENV CC=/usr/local/bin/clang
ENV CXX=/usr/local/bin/clang++

WORKDIR /root
