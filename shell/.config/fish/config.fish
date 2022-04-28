# TODO:
# completions?
# better colors

# kill this jesus
set fish_greeting

# sources
source $__fish_config_dir/sets.fish
source $__fish_config_dir/colors.fish
source $__fish_config_dir/bindings.fish
source $__fish_config_dir/aliases.fish

# zoxide
zoxide init fish | source

# Random colorscripts
# colorscript random

# starship
starship init fish | source
