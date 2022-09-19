# A quick run without login
docker run -e ARANGO_NO_AUTH=1 -p 8529:8529 -d -v /tmp/arangodb:/var/lib/arangodb3 arangodb

# Run using a host directory:
#mkdir /tmp/arangodb
#docker run -e ARANGO_RANDOM_ROOT_PASSWORD=1 -p 8529:8529 -d \
#          -v /tmp/arangodb:/var/lib/arangodb3 \
#          arangodb
# user is "root", and password will be shown on stdout, run:
#docker container logs $(docker container ls -qa)
# You'll something like this:
#===========================================
#GENERATED ROOT PASSWORD: iNeeryQZKjwuz00L
#===========================================

# more elaborated docs: 
# export IP=<IP of docker host>
# docker volume create arangodb
# docker run -it --name=adb --rm -p 8528:8528 \
#     -v arangodb:/data \
#     -v /var/run/docker.sock:/var/run/docker.sock \
#     arangodb/arangodb-starter \
#     --starter.address=$IP \
#     --starter.mode=single
# Source: https://www.arangodb.com/docs/3.9/deployment-single-instance-using-the-starter.html#using-the-arangodb-starter-in-docker

# Stop and remove container
# docker container rm -f $(docker container ls -qa)

