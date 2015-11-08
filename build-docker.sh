#!/usr/bin/env bash

# get the latest fly release
wget https://github.com/fly-object-space/fly-java/releases/download/2.0.2/FlyJava-2.0.2.zip

# unzip it
yes | unzip FlyJava-2.0.2.zip

# delete the zip file
rm -r FlyJava-2.0.2.zip

# unzip it
cp FlyJava/bin/Linux/i386/fly .