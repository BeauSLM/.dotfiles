set -e fish_user_paths
set -U fish_user_paths /usr/local/bin $HOME/.local/bin/ $HOME/.bin $HOME/.emacs.d/bin $fish_user_paths

set fish_greeting
set EDITOR "nvim"
set VISUAL "nvim"

# nvim as manpager
set -x MANPAGER "nvim -c 'set ft=man' -"

function fish_user_key_bindings
  fish_vi_key_bindings
end

colorscript random
