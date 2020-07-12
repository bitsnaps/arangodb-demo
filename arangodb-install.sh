curl -OL https://download.arangodb.com/arangodb36/DEBIAN/Release.key
sudo apt-key add - < Release.key

echo 'deb https://download.arangodb.com/arangodb36/DEBIAN/ /' | sudo tee /etc/apt/sources.list.d/arangodb.list
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install arangodb3=3.6.4-1

sudo apt-get install arangodb3-dbg=3.6.4-1

#source: https://www.arangodb.com/download-major/ubuntu/

