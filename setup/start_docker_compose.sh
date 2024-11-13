#!/bin/bash

MOUNT_POINT="/media/axel/disk-axel"

while ! mount | grep "$MOUNT_POINT" > /dev/null; do
    echo "Attente du disque dur d'être monté..."
    sleep 10
done

docker compose up plex
