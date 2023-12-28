ARG BASE_IMAGE
FROM ${BASE_IMAGE}
WORKDIR /workspace
ENV TZ=Asia/Shanghai
ENV DEBIAN_FRONTEND=noninteractive
ENV MINING="lolminer"
ENV ALGORITHM=
ENV POOL=
ENV WALLET=
ENV OTHER_ARGS=

RUN apt update && apt install wget -y && \
    wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.81/lolMiner_v1.81_Lin64.tar.gz && \ 
    tar xf lolMiner_v1.81_Lin64.tar.gz && \
    cp 1.81/lolMiner /usr/bin/

COPY --from=scripts start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]
