FROM linuxserver/couchpotato

COPY comodo-intermediate.pem /
RUN cat /comodo-intermediate.pem >> /etc/ssl/certs/ca-certificates.crt && \
  rm /comodo-intermediate.pem

RUN cd /app && \
  rmdir couchpotato && \
  wget https://github.com/CouchPotato/CouchPotatoServer/archive/master.tar.gz && \
  tar -zxf master.tar.gz && \
  rm master.tar.gz && \
  mv CouchPotatoServer-master couchpotato && \
  cd couchpotato && \
  git init

COPY update-kodi-library.sh /root/
