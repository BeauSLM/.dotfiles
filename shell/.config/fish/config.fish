source $__fish_config_dir/sets.fish
if not status is-interactive
    exit
end

# kill this jesus
set fish_greeting

# add to $PATH
fish_add_path $HOME/{.local/bin, .emacs.d/bin}

# sources
source $__fish_config_dir/colors.fish
source $__fish_config_dir/bindings.fish
source $__fish_config_dir/aliases.fish

# zoxide
zoxide init --cmd cd fish | source

# starship
starship init fish | source
