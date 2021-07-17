#!/bin/bash
test -f ${XDG_CONFIG_HOME:-~/.config}/user-dirs.dirs && source ${XDG_CONFIG_HOME:-~/.config}/user-dirs.dirs
docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ --name smplayer \
           --volume=/run/user/1000/pulse:/run/user/1000/pulse \
           --volume=$XDG_VIDEOS_DIR:/home/user/Videos \
           --volume=$XDG_MUSIC_DIR:/home/user/Music \
           -t wachii/smplayer:latest
