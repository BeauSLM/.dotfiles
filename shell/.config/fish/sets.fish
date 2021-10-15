# exports.fish

# PATH
set -e fish_user_paths
set -U fish_user_paths /usr/local/bin $HOME/.local/bin/ $HOME/.bin $HOME/.emacs.d/bin $fish_user_paths

set -x TERMINAL kitty

# XDG_CONFIG
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_DATA_HOME $HOME/.local/share

# add stow folders
set -x STOW_FOLDERS "cli_utilities,dmscripts,git,other_config,scripts,shell,terminal,tmux,vim(s),window_managers"

# add dotfiles
set -x DOTFILES $HOME/.dotfiles

# nvim as editor
set -x EDITOR "nvim"
set -x VISUAL "nvim"

# bat as manpager
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
# set -x MANPAGER "nvim +Man!"

set fish_cursor_default     block      blink
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block
