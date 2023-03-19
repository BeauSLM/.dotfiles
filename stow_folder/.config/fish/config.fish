fish_add_path $HOME/{ .local/bin, .emacs.d/bin }

set -x DOOMDIR $HOME/.config/doom

set -x TERMINAL kitty

set -x DOTFILES $HOME/.dotfiles

set -x SI $HOME/si

set -x EDITOR "nvim"
set -x VISUAL "nvim"

set -x BROWSER "brave"

set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

set -x HELIX_RUNTIME $SI/helix/runtime

set -x NEXT_TELEMETRY_DISABLED 1 # the fuck is this?

set -x CMAKE_BUILD_PARALLEL_LEVEL $(nproc)

set fish_cursor_default     block      blink
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block

# REVIEW: do I just put everything after this???
if not status is-interactive
    exit
end

set fish_greeting

set fish_color_command green --bold

function fish_user_key_bindings
    fish_vi_key_bindings
    bind -M insert \cF 'tmux-sessionizer'
    bind -M insert \v 'tmux-sessionizer ~/.dotfiles'
end

abbr ls 'exa'
abbr ll 'exa -la --git'

# Abbres for software managment
# paru as aur helper - updates everything
abbr upall "paru -Syu --noconfirm"
abbr update 'paru -Syyu --noconfirm'

#get fastest mirrors in your neighborhood
abbr mirror "sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"

#Cleanup orphaned packages
abbr cleanup 'paru -Rns $(paru -Qtdq)'

#get the error messages from journalctl
abbr jctl "journalctl -p 3 -xb"

abbr lg 'lazygit'

# Source_Installs
abbr si 'tmux-sessionizer $SI'

# sudo -> doas
abbr sudo 'doas'
abbr su 'doas -s'

abbr rip "expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

abbr vrc 'tmux-sessionizer $HOME/.config/nvim'

zoxide init fish | source

starship init fish | source
