#!/bin/sh -e

sudo apt-get install mpd mpc;

mkdir -p $HOME/.config/mpd;

sudo cp /etc/mpd.conf $HOME.config/mpd/mpd.conf;
