#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u supriyashevate -p supriyaray17
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG supriyashevate/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push supriyashevate/$IMAGE:$BUILD_TAG
