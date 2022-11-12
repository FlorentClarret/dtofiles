#!/usr/bin/env zsh

alias borg-home="borg create --verbose --list --stats --compression lzma,9 --exclude-caches --exclude /home/florentclarret/.sync /mnt/backup/florentclarret/latitude/home.borg::\"Home-Latitude-{now}\" /home/florentclarret;";
