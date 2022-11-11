#!/usr/bin/env zsh

export HISTTIMEFORMAT="%d/%m/%y %T "
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export SAVEHIST=1000000000
export HISTFILE=~/.zsh_history
setopt HIST_FIND_NO_DUPS
setopt inc_append_history
setopt share_history
