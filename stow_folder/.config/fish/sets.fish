# sets.fish

set -ga fish_user_paths $HOME/{.local/bin, .nimble/bin, go/bin} $SOURCE_INSTALLS/{Odin, ols, zig/build/stage1/bin, zls/zig-out/bin}

set -x TERMINAL st

set -x DOTFILES $HOME/.dotfiles

set -x SOURCE_INSTALLS $HOME/si

set -x EDITOR "hx"
set -x VISUAL "hx"

set -x BROWSER "brave"

set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

set -x HELIX_RUNTIME $SOURCE_INSTALLS/helix/runtime

set fish_cursor_default     block      blink
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block
