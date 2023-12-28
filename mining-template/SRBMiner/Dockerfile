ARG BASE_IMAGE
FROM ${BASE_IMAGE}
WORKDIR /workspace
ENV TZ=Asia/Shanghai
ENV DEBIAN_FRONTEND=noninteractive
ENV MINING="srbminer"
ENV ALGORITHM=""
ENV POOL=""
ENV WALLET=""
ENV OTHER_ARGS=""

RUN apt update && apt install wget -y && \
    wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.4.4/SRBMiner-Multi-2-4-4-Linux.tar.xz && \ 
    tar xf SRBMiner-Multi-2-4-4-Linux.tar.xz && \
    cp SRBMiner-Multi-2-4-4/SRBMiner-MULTI /usr/bin/

COPY --from=scripts start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]
