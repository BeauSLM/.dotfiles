# sets.fish

set -ga fish_user_paths $HOME/{.local/bin, .nimble/bin, go/bin} $SOURCE_INSTALLS/{Odin, ols, zig-bin}

set -x TERMINAL alacritty

set -x DOTFILES $HOME/.dotfiles

set -x SOURCE_INSTALLS $HOME/si

set -x EDITOR "nvim"
set -x VISUAL "nvim"

set -x BROWSER "brave"

set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
# set -x MANPAGER "nvim +Man!"

# jdtls
set -x JDTLS_HOME $SOURCE_INSTALLS/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository

set -x HELIX_RUNTIME $SOURCE_INSTALLS/helix/runtime

set fish_cursor_default     block      blink
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block
