#!/bin/bash

echo "> Running $(basename "$0") "

set -eufo pipefail

chsh -s "$(which zsh)"
