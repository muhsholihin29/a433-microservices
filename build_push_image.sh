# build docker image from Dockerfile
docker build -t item-app:v1 .
# Running or build image with name mongo-db, using mode detach, use option network item-app, and volume app-data with directoy /data/db
docker run -d --name mongo-db --network item-app --network-alias item-db -v app-db:/data/db mongo:3
# Run container with mode detach and use host port and container port 8080, with the name item-app and using image item-app:v1
docker run -dp 8080:8080  -w /app --network item-app --name item-app item-app:v1
# Show list of docker images 
docker images