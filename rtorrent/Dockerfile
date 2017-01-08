FROM diameter/rtorrent-rutorrent:stable

COPY comodo-intermediate.pem /
RUN cat /comodo-intermediate.pem >> /etc/ssl/certs/ca-certificates.crt && \
  rm /comodo-intermediate.pem

COPY patch.sed /root/

RUN cd /root && \
    sed -f patch.sed -i rutorrent-basic.nginx && \
    sed -f patch.sed -i rutorrent-tls.nginx && \
    rm patch.sed

EXPOSE 5000
