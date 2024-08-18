#!/bin/bash

# Define the image name and tag
IMAGE_NAME=$1

# Pushing the Docker image to Docker Hub
echo "Pushing Docker image: $IMAGE_NAME to Docker Hub..."
docker push $IMAGE_NAME

# Check if the push was successful
if [ $? -eq 0 ]; then
    echo "Docker image pushed successfully: $IMAGE_NAME"
else
    echo "Error: Docker image push failed."
    exit 1
fi