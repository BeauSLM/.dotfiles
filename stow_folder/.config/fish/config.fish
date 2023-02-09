source $__fish_config_dir/sets.fish
if not status is-interactive
    exit
end

set fish_greeting

source $__fish_config_dir/colors.fish
source $__fish_config_dir/bindings.fish
source $__fish_config_dir/aliases.fish

zoxide init fish | source

starship init fish | source
