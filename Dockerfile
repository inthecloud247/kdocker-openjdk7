FROM inthecloud247/kdocker-base
MAINTAINER inthecloud247 "inthecloud247@gmail.com"

RUN add-apt-repository ppa:saltstack/salt
RUN apt-get update
RUN apt-get -y install salt-master salt-syndic salt-minion

# openjdk7
RUN apt-get -y install --no-install-recommends openjdk-7-jdk

# set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

