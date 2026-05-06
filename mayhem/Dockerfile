FROM --platform=linux/amd64 ubuntu:22.04 AS builder

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git build-essential libgimp2.0-dev libcurl4-openssl-dev libfftw3-dev libtiff-dev libjpeg-dev libopenexr-dev qtbase5-dev qttools5-dev-tools wget

# Pin CImg to cimg_version 324 to match the gmic source in this repo (gmic_version 324).
# The latest CImg master changed cimg_openmp_for from 3 to 4 arguments, breaking compilation.
RUN git clone https://github.com/GreycLab/CImg.git && \
    git -C CImg checkout bd1228f0fbfb4c3982baa6374bb599ea92c5a7cc
RUN git clone --depth=1 https://github.com/c-koi/gmic-qt.git
RUN git clone --depth=1 https://github.com/c-koi/zart.git

ENV DESTDIR=/install
COPY . /gmic
WORKDIR /gmic/src
RUN make -j8 cli
RUN make lib
RUN make install
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y clang
RUN clang++ /gmic/mayhem/fuzz_gmic_exception.cpp -o /fuzz -fsanitize=fuzzer,address -I /gmic/src/ -lgmic -L /install/usr/lib/

FROM ubuntu:22.04 AS package
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libcurl4-openssl-dev libfftw3-dev libtiff-dev libjpeg-dev libgomp1 libopenexr-dev
COPY --from=builder /install /install
COPY --from=builder /fuzz /fuzz_gmic_exception
ENV LD_LIBRARY_PATH=/install/usr/lib
