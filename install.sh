#!/bin/sh -e

sudo apt-get install mpd mpc;

mkdir -p $HOME/.config/mpd;

sudo cp /etc/mpd/.conf $HOME.config/mpd/mpd.conf;

# config
## music_directory ""
## audio_output ""
## log "verbose"

sudo cp /usr/share/sounds/alsa/*.wav $HOME/
