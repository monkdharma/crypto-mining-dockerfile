ARG BASE_IMAGE
FROM ${BASE_IMAGE}
WORKDIR /workspace
ENV TZ=Asia/Shanghai
ENV DEBIAN_FRONTEND=noninteractive
ENV ALGORITHM=KARLSEN
ENV POOL=us.karlsen.herominers.com:1195
ENV WALLET=karlsen:qpk6uzs753emhnue24pq0af30tfafypx7thyrgwmvtdfpjvf2uv32t7vxhrnl

RUN apt update && apt install wget -y && \
    wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.81/lolMiner_v1.81_Lin64.tar.gz && \ 
    tar xf lolMiner_v1.81_Lin64.tar.gz && \
    cp 1.81/lolMiner /usr/bin/

COPY --from=scripts start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]
