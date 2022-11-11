#!/usr/bin/env zsh

alias path='echo -e ${PATH//:/\\n}'

export PATH="$HOME/.scripts:$PATH"
export PATH=".:$PATH"
