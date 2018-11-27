#!/bin/bash

DOCKER_ROOT=$(pwd)
MUSIC_LIB="${HOME}/Music/CleanBeats"
MUSIC_DL="${HOME}/Music"

docker container run \
    --name=beets \
    -v "${DOCKER_ROOT}"/config:/config \
    -v "${MUSIC_LIB}":/music \
    -v "${MUSIC_DL}":/downloads \
    -e TZ='America/Chicago' \
    -e PUID='667388921' -e PGID='71667744' \
    -p 8337:8337 \
    linuxserver/beets

    #-e PUID='667388921' -e GUID='71667744' \

