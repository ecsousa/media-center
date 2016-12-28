FROM diameter/rtorrent-rutorrent:stable
COPY patch.sed /root/

RUN cd /root && \
    sed -f patch.sed -i rutorrent-basic.nginx && \
    sed -f patch.sed -i rutorrent-tls.nginx && \
    rm patch.sed

EXPOSE 5000
