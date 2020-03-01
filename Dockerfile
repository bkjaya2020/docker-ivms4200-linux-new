# ivms4200 linux  from https://upload.bkeesti.ee/Hikvision/Software/ 
# Or http://www.hikvision.msk.ru/index/download/0-14
FROM  bkjaya1952/q4wine-x11vnc-novnc-docker 
MAINTAINER B.K.Jayasundera
ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive
RUN apt update && apt -y install vim \
   && apt -y autoremove
COPY ivms /ivms
RUN chmod 777 /ivms/iVMS-4200
COPY bash.bashrc /etc/bash.bashrc
COPY ivmswine.sh /usr/bin/ivmswine.sh
RUN chmod 777 /usr/bin/ivmswine.sh

EXPOSE 8080
CMD ["/usr/bin/supervisord"]
