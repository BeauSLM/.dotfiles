# TODO:
# completions?
# better colors

source $__fish_config_dir/sets.fish
if not status is-interactive
    exit
end
# kill this jesus
set fish_greeting

# sources
source $__fish_config_dir/colors.fish
source $__fish_config_dir/bindings.fish
source $__fish_config_dir/aliases.fish

# zoxide
zoxide init fish | source

# Random colorscripts
# colorscript random

# starship
starship init fish | source
