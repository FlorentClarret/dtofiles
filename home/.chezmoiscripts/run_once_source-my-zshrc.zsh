#!/usr/bin/env zsh

echo "> Running $(basename "$0") "

grep 'source $HOME/.my_zshrc' $HOME/.zshrc || echo -e 'source $HOME/.my_zshrc\n' >> $HOME/.zshrc
