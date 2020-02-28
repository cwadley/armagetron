FROM ubuntu:xenial
RUN add-apt-repository ppa:armagetronad-dev && \
    apt-get update && \
    apt-get install armagetronad-dedicated && \
    service armagetronad stop

CMD /usr/games/armagetronad-dedicated
EXPOSE 4534/udp