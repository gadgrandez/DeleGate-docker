FROM ubuntu:latest

WORKDIR /delegate

RUN apt update && apt install -y wget
RUN wget https://its-more.jp/delegate/ftp/pub/DeleGate/bin/linux/latest/linux2.6-dg9_9_13.tar.gz && \
    tar -xzvf linux2.6-dg9_9_13.tar.gz && \
    mv dg9_9_13/DGROOT/bin/dg9_9_13 /usr/local/bin/delegate
    
COPY run.sh /usr/local/bin/run.sh

CMD ["/bin/bash", "/usr/local/bin/run.sh"]
