#!/bin/bash

# Define the image name and tag
IMAGE_NAME="yeshwanth2435/dev"
TAG="latest" 

# Logging into Docker Hub
echo "Logging into Docker Hub..."
docker login

# Checking if login was successful
if [ $? -ne 0 ]; then
    echo "Error: Docker login failed."
    exit 1
else
    echo "Docker login succesfull."
fi

# Pushing the Docker image to Docker Hub
echo "Pushing Docker image: $IMAGE_NAME:$TAG to Docker Hub..."
docker push $IMAGE_NAME:$TAG

# Check if the push was successful
if [ $? -eq 0 ]; then
    echo "Docker image pushed successfully: $IMAGE_NAME:$TAG"
else
    echo "Error: Docker image push failed."
    exit 1
fi