FROM linuxserver/sickrage

COPY comodo-intermediate.pem /
RUN cat /comodo-intermediate.pem >> /etc/ssl/certs/ca-certificates.crt && \
  rm /comodo-intermediate.pem

RUN cd /app && \
  wget https://github.com/SickRage/SickRage/archive/master.tar.gz && \
  tar -zxf master.tar.gz && \
  rm master.tar.gz && \
  mv SickRage-master sickrage && \
  cd sickrage && \
  git init

COPY update-kodi-library.sh /root/
