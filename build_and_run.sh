#!/bin/bash

# Define the image name
IMAGE_NAME="my_flask_app"

# Build the Docker image
docker build -t $IMAGE_NAME .

# Run the Docker container
docker run -d -p 5000:5000 $IMAGE_NAME