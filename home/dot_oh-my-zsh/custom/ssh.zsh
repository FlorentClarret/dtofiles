#!/usr/bin/env zsh

alias sshconfig="${EDITOR:-vim} ~/.ssh/config"

## Fetch hostname from sshconfig and create an alias to connect to them
if [[ -f ~/.ssh/config ]]; then
  for file in $(ls ~/.ssh/config ~/.ssh/config.d/*); do
    for name in $(grep -E ^Host $file | grep -v '*' | grep -v '?' | sed 's/^Host \(.*\)/\1/' | tr ' ' '\n'); do
  	  eval alias "$name=\"ssh $name\""
    done
  done
fi

start_agent() {
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    chmod 600 "${SSH_ENV}"
    source "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

SSH_ENV="$HOME/.ssh/data/ssh_agent_data"
mkdir -p "$HOME/.ssh/data"

# Source SSH settings, if needed
if [[ -f "${SSH_ENV}" ]]; then
    source "${SSH_ENV}" > /dev/null
    ps -ef | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi
