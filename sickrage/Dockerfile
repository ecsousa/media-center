FROM linuxserver/sickrage
RUN cd /app && \
  wget https://github.com/SickRage/SickRage/archive/master.tar.gz && \
  tar -zxf master.tar.gz && \
  rm master.tar.gz && \
  mv SickRage-master sickrage && \
  cd sickrage && \
  git init

