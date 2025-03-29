#!/bin/sh -e

sudo apt-get install mpd mpc;

mkdir -p $HOME/.config/mpd;

sudo cp /etc/mpd/.conf $HOME/.config/mpd/mpd.conf;
sudo cp /usr/share/sounds/alsa/*.wav $HOME/Music

sudo chown $USER:$USER $HOME/.config/mpd/mpd.conf;

mkdir -p $HOME/Music/tag_cache
mkdir -p $HOME/Music/state

# config
## music_directory "~/Music"
## db_file "~/Music/tag_cache"
## log_file "syslog"
## state_file "~/Music/state
## sticker_file COMMENT_OUT
## log_level "verbose"
## auto_update "yes"

## audio_output ""

