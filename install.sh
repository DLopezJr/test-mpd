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
## bind_to_address
## log_level "verbose"
## auto_update "yes"

## audio_output ""

# cat /dev/urandom


-------------

# Recommended location for database; autocreates it
db_file            "~/.config/mpd/database"

# The music directory is by default the XDG directory, uncomment to amend and choose a different directory
music_directory    "~/Music"

# Uncomment to refresh the database whenever files in the music_directory are changed
auto_update "yes"

bind_to_address "localhost"
# bind_to_address "${DEVICE_IP}"
port "6600"

log_level "verbose"

#audio_output {
#        type "alsa"
#       name "ALSO"
#}

audio_output {
        type    "pipewire"
        name    "Pipewirey"
}

---

workflow
- mpd
- mpc add /
- mpc play
