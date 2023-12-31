FROM rust:latest
RUN apt-get update && apt-get install -y curl

RUN apt-get update && \
    apt-get install -y git

WORKDIR /app
# leoクローンしてインストール leoプログラムのビルドに必要
RUN git clone https://github.com/AleoHQ/leo.git leo &&\
    cd leo &&\
    cargo install --locked --path . 

# snarkVMクローンしてインストール
RUN git clone https://github.com/AleoHQ/snarkVM snarkVM &&\
    cd snarkVM &&\
    cargo install --path .

# snarkOSクローンしてインストール testnetにデプロイするのに必要
RUN git clone https://github.com/AleoHQ/snarkOS.git snarkOS &&\
    cd snarkOS &&\
    ./build_ubuntu.sh &&\
    cargo install --path .



