[[ $- != *i* ]] && return

export PATH="$HOME/.local/bin:$PATH"

export TERMINAL=kitty

export EDITOR=nvim
export VISUAL=nvim

export TERMINAL=kitty

export DOTFILES=$HOME/.dotfiles

export SI=$HOME/si

export EDITOR="nvim"
export VISUAL="nvim"

export BROWSER="brave"

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

export HELIX_RUNTIME=$SI/helix/runtime

export CMAKE_BUILD_PARALLEL_LEVEL=$(nproc)
