#!/bin/bash

echo maven-project 
echo $BUILD_TAG 
echo $PASS 

docker run supriyashevate/maven-project:$BUILD_TAG

