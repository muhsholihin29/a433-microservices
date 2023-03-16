# build docker image from Dockerfile
docker build -t karsajobs-ui:latest .
# Show list of docker images
docker images
# create a new image tag from karsajobs-ui:latest to sholihin29/karsajobs-ui:latest
docker tag karsajobs-ui:latest sholihin29/karsajobs-ui:latest
# Login to docker hub with username and password
docker login --username=sholihin29 --password=$DOCKER_PASS
# Push image to docker hub
docker push sholihin29/karsajobs-ui:latest
