# Build the image
docker image build -t node-with-app .

# Start a container using the built image on port 80
docker container run -p 80:3000 --rm node-with-app

# Tag and push the image to Docker Hub
docker image tag node-with-app danielcunha54/node-with-app
docker image push danielcunha54/node-with-app:latest

# Remove cache
docker image rm node-with-app danielcunha54/node-with-app

# Run a container using the built image in hub.docker.com
docker container run --rm -p 80:3000 danielcunha54/node-with-app
