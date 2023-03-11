# build docker image from Dockerfile
docker build -t item-app:v1 .
# Show list of docker images 
docker images
# create a new image tag from item-app:v1 to sholihin29/item-app:v1
docker tag item-app:v1 sholihin29/item-app:v1
# Login to docker hub with username and password
docker login --username=sholihin29 --password=$DOCKER_PASS
# Push image to docker hub
docker push sholihin29/item-app:v1
