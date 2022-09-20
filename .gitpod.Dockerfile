FROM gitpod/workspace-full

USER root

RUN curl -OL https://download.arangodb.com/arangodb36/DEBIAN/Release.key
RUN echo 'deb https://download.arangodb.com/arangodb36/DEBIAN/ /' | tee /etc/apt/sources.list.d/arangodb.list

RUN apt-get install apt-transport-https
RUN apt-get install arangodb3=3.6.4-1 && \
    apt-get install arangodb3-dbg=3.6.4-1

USER gitpod

