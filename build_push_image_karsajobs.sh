# build docker image from Dockerfile
docker build -t karsajobs:latest .
# Show list of docker images
docker images
# create a new image tag from karsajobs:latest to sholihin29/karsajobs:latest
docker tag karsajobs:latest sholihin29/karsajobs:latest
# Login to docker hub with username and password
docker login --username=sholihin29 --password=$DOCKER_PASS
# Push image to docker hub
docker push sholihin29/karsajobs:latest
