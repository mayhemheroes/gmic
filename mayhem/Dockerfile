FROM --platform=linux/amd64 ubuntu:22.04 as builder

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git build-essential libgimp2.0-dev libcurl4-openssl-dev libfftw3-dev libtiff-dev libjpeg-dev libopenexr-dev qtbase5-dev qttools5-dev-tools wget

RUN git clone --depth=1 https://github.com/dtschump/CImg.git
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

FROM ubuntu:22.04 as package
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libcurl4-openssl-dev libfftw3-dev libtiff-dev libjpeg-dev libgomp1 libopenexr-dev
COPY --from=builder /install /install
COPY --from=builder /fuzz /fuzz_gmic_exception
ENV LD_LIBRARY_PATH=/install/usr/lib
