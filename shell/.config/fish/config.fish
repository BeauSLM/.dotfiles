# TODO:
# completions?
# better colors

set fish_greeting
set -e fish_user_paths
set -U fish_user_paths /usr/local/bin $HOME/.local/bin/ $HOME/.bin $HOME/.emacs.d/bin $fish_user_paths

set -x TERMINAL kitty

# XDG_CONFIG
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_DATA_HOME $HOME/.local/share

# add stow folders
set STOW_FOLDERS "cli_utilities,dmscripts,git,other_config,scripts,shell,terminal,tmux,vim(s),window_managers"

# add dotfiles
set DOTFILES $HOME/.dotfiles

set EDITOR "nvim"
set VISUAL "nvim"

# bat as manpager
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
# set -x MANPAGER "nvim +Man!"

function sessionizer
    tmux-sessionizer $argv
end

function fish_user_key_bindings
    fish_vi_key_bindings
    bind -M insert \cF 'sessionizer'
    bind -M insert \v 'sessionizer ~/.dotfiles'
end

source $__fish_config_dir/aliases.fish

# Randiom colorscripts
# colorscript random
starship init fish | source
