#!/bin/sh
rm -f packages/* 
docker build -f Dockerfile-debbuild -t test . 
docker run -ti -v `pwd`/packages:/output test