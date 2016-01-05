#!/bin/sh
docker run --rm --volumes-from wpd-data -v $(pwd):/backup busybox tar cvfz /backup/backup.tar.gz /var/lib/mysql