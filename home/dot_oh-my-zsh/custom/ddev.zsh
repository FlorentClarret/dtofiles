#!/usr/bin/env zsh

if [ ! -f ~/.oh-my-zsh/custom/ddev_autocomplete.zsh ]; then
    echo "Installing ddev autocomplete..."
    _DDEV_COMPLETE=zsh_source ddev > ~/.oh-my-zsh/custom/ddev_autocomplete.zsh
    echo "Done."
    source ~/.oh-my-zsh/custom/ddev_autocomplete.zsh
fi

export DDEV_E2E_AGENT_PY2="datadog/agent-dev:nightly-main-py2"
export DDEV_E2E_AGENT="datadog/agent-dev:nightly-main-py3"
