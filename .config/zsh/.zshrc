export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# https://github.com/sindresorhus/pure
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# https://github.com/zdharma/fast-syntax-highlighting
plugins=(git F-Sy-H)
source $ZSH/oh-my-zsh.sh
cd

# nvim bin path
export PATH="$PATH:/usr/local/lib/nvim/bin"

# Adds ~/.local/bin and subfolders to $PATH
export PATH="$PATH:~/.local/bin"

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

# Flat Assembler
export PATH=$PATH:/usr/local/lib/fasm

# Libclang
export LIBCLANG_PATH=/usr/lib

# DBUS SESSION BUS ADDRESS is unset error.. ; have to dig more
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u)/bus

# Rust
source "$HOME/.cargo/env"

# asdf
. "$HOME/.asdf/asdf.sh"
