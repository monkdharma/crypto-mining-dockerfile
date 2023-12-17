ARG BASE_IMAGE
FROM ${BASE_IMAGE}
WORKDIR /workspace
ENV TZ=Asia/Shanghai
ENV DEBIAN_FRONTEND=noninteractive
ENV MINING="gminer"
ENV ALGORITHM=""
ENV POOL=""
ENV WALLET=""

RUN apt update && apt install wget -y && \
    wget https://github.com/develsoftware/GMinerRelease/releases/download/3.43/gminer_3_43_linux64.tar.xz && \
    tar xf gminer_3_43_linux64.tar.xz && \
    cp miner /usr/bin/

COPY --from=scripts start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]
