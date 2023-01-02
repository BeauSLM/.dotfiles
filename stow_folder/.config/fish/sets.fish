# sets.fish

set -ga fish_user_paths $HOME/{ .local/bin, go/bin, .emacs.d/bin }

set -x DOOMDIR $HOME/.config/doom

set -x TERMINAL alacritty

set -x DOTFILES $HOME/.dotfiles

set -x SI $HOME/si

set -x EDITOR "emacsclient -t"
set -x VISUAL "emacsclient -c"

set -x BROWSER "brave"

set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

set -x HELIX_RUNTIME $SI/helix/runtime

set -x NEXT_TELEMETRY_DISABLED 1 # the fuck is this?

set fish_cursor_default     block      blink
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block
