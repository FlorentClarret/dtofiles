#!/usr/bin/env zsh

if [ ! -f ~/.oh-my-zsh/custom/ddev_autocomplete.zsh ]; then
    echo "Installing ddev autocomplete..."
    _DDEV_COMPLETE=zsh_source ddev > ~/.oh-my-zsh/custom/ddev_autocomplete.zsh
    echo "Done."
    source ~/.oh-my-zsh/custom/ddev_autocomplete.zsh
fi
