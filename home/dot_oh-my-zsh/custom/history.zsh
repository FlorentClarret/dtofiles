#!/usr/bin/env zsh

export HISTTIMEFORMAT="%d/%m/%y %T "
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=8192
export HISTFILESIZE=8192

# Append to the history file instead of overwrite
shopt -s histappend
