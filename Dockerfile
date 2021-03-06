
 FROM harisekhon/debian-java

 MAINTAINER Rac021 ( r.yahiaoui.21@gmail.com )

 USER root

 RUN echo " ** Update Distrib "                  && \
     echo " "                                    && \
     echo "root:root_pass" | chpasswd            && \
     adduser --disabled-password --gecos '' coby && \
     echo "coby:coby_pass" | chpasswd            && \
     apt-get -y update                           && \
     apt-get -y install procps                   && \
     apt-get -y install curl                     && \
     apt-get -y install locales                  && \
     apt-get clean  

 # COPY COBY SOURCES TO : /opt/coby-src
 RUN mkdir /opt/coby-src
 COPY src/. /opt/coby-src
 RUN chown -R coby:coby /opt/coby-src
 RUN chmod -R 777 /opt/coby-src
 
 # COPY COBY PIPELINE to : /opt/coby/
 RUN mkdir /opt/coby
 COPY coby_bin/. /opt/coby
 RUN chown -R coby:coby /opt/coby/
 RUN chmod -R 777 /opt/coby/

 RUN echo "fr_FR.UTF-8 UTF-8" > /etc/locale.gen && \
     locale-gen fr_FR.UTF-8                     && \
     dpkg-reconfigure locales                   && \
    /usr/sbin/update-locale LANG=fr_FR.UTF-8

 ENV LC_ALL fr_FR.UTF-8

 USER coby 

 WORKDIR /opt/coby

 CMD /bin/bash

 
