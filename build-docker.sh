#!/usr/bin/env bash

# get the latest fly release
wget https://github.com/fly-object-space/fly-java/releases/download/2.0.2/FlyJava-2.0.2.zip

# unzip it
yes | unzip FlyJava-2.0.2.zip

# delete the zip file
rm -rf FlyJava-2.0.2.zip

# copy out the linux executable
cp FlyJava/bin/Linux/i386/fly .

# delete the local unzipped files
rm -rf FlyJava

# run the docker file to build the image
docker build -t fly-object-space .

# delete the local executable
rm -rf fly

# push the docker image to a the registry

