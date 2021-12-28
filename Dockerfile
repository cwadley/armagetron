FROM ubuntu:focal
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:armagetronad-dev && \
    apt-get update && \
    apt-get install -y armagetronad-dedicated && \
    apt-get clean && \
    useradd -ms /bin/bash armagetron && \
    chown -R armagetron:armagetron /usr/games && \
    chown armagetron:armagetron /var/games/armagetronad

USER armagetron
WORKDIR /home/armagetron
CMD /usr/games/armagetronad-dedicated
EXPOSE 4534/udp
