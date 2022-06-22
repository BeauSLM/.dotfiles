# sets.fish

set -x TERMINAL alacritty

# add stow folders
set -x STOW_FOLDERS "cli_utilities,dmscripts,git,other_config,shell,terminal,tmux,text_editors,window_managers"

# add dotfiles
set -x DOTFILES $HOME/.dotfiles

# add source installs
set -x SOURCE_INSTALLS $HOME/si

# nvim as editor
set -x EDITOR "hx"
set -x VISUAL "hx"

# brave as browser
set -x BROWSER "brave"

# bat as manpager
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
# set -x MANPAGER "nvim +Man!"

# jdtls
set -x JDTLS_HOME $SOURCE_INSTALLS/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository

# helix runtime
set -x HELIX_RUNTIME $SOURCE_INSTALLS/helix/runtime

set fish_cursor_default     block      blink
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block
