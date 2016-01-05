#!/bin/sh
docker stop wpd
docker run --rm --volumes-from wpd-data -v $(pwd):/backup busybox tar zxvf /backup/backup.tar.gz 
docker-compose up --force-recreate