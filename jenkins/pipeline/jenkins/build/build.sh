#!/bin/bash

# Copy the new jar to the build location
cp -f jenkins/pipeline/java-app/target/*.jar jenkins/pipeline/jenkins/build/

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd jenkins/pipeline/jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
