FROM linuxserver/couchpotato
RUN cd /app && \
  rmdir couchpotato && \
  wget https://github.com/CouchPotato/CouchPotatoServer/archive/master.tar.gz && \
  tar -zxf master.tar.gz && \
  rm master.tar.gz && \
  mv CouchPotatoServer-master couchpotato && \
  cd couchpotato && \
  git init

