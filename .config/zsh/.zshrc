export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# https://github.com/sindresorhus/pure
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# needs to be installed:
# https://github.com/zdharma/fast-syntax-highlighting
plugins=(git F-Sy-H)
source $ZSH/oh-my-zsh.sh

# Custom scripts
# Adds ~/.local/bin and subfolders to $PATH
export PATH="$PATH:$HOME/.local/bin"

# Git shortcuts
source ~/.local/bin/git_functions

# Rust
. "$HOME/.cargo/env"

# Pyenv
# https://github.com/pyenv/pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# ASDF
# https://asdf-vm.com/
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

# Nodejs
export PATH="$PATH:/usr/lib/node-v20.13.1-x64/bin/"

# Pgadmin binaries
export PATH="$PATH:/usr/pgadmin4/bin/"

# Bun
[ -s "/home/akhercha/.bun/_bun" ] && source "/home/akhercha/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Starkli
. "/home/akhercha/.starkli/env"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Zoxide config
eval "$(zoxide init zsh)"
alias cd=z
