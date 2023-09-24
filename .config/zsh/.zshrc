# TODO: split in multiple files.

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# https://github.com/sindresorhus/pue
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# https://github.com/zdharma/fast-syntax-highlighting
plugins=(git F-Sy-H)
source $ZSH/oh-my-zsh.sh
cd

# Adds ~/.local/bin and subfolders to $PATH
export PATH="$PATH:~/.local/bin"

# Poetry
export POETRY_ROOT="$HOME/.local/bin"
export PATH="$POETRY_ROOT:$PATH"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Git shortcuts
source ~/.local/bin/git_functions

# Aliases
source ~/.config/shell/aliases

# Required for Raylib build
export LIBCLANG_PATH=/usr/lib/x86_64-linux-gnu
export PATH=$PATH:/home/akhercha/.spicetify

# Bun completions
[ -s "/home/akhercha/.bun/_bun" ] && source "/home/akhercha/.bun/_bun"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Go lang
export PATH=$PATH:/usr/local/go/bin

# Libclang
export LIBCLANG_PATH=/usr/lib
