#!/usr/bin/env zsh

grep 'source $HOME/.my_zshrc' $HOME/.zshrc || echo -e 'source $HOME/.my_zshrc\n' >> $HOME/.zshrc
