#!/bin/sh
docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ --name smplayer --volume=/run/user/1000/pulse:/run/user/1000/pulse -t smplayer
