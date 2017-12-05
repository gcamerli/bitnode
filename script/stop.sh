#!/bin/sh
# ./stop.sh

docker stop -t 1 bitnode
docker rm bitnode
