FROM gitpod/workspace-full

USER root

RUN curl -OL https://download.arangodb.com/arangodb39/DEBIAN/Release.key
RUN apt-key add - < Release.key
RUN echo 'deb https://download.arangodb.com/arangodb39/DEBIAN/ /' | tee /etc/apt/sources.list.d/arangodb.list

USER gitpod

RUN sudo DEBIAN_FRONTEND=noninteractive apt-get install apt-transport-https
RUN sudo DEBIAN_FRONTEND=noninteractive apt-get update
RUN sudo DEBIAN_FRONTEND=noninteractive apt-get install arangodb3=3.9.3-1
# Optional debug symbol
RUN sudo DEBIAN_FRONTEND=noninteractive apt-get install arangodb3-dbg=3.9.3-1


