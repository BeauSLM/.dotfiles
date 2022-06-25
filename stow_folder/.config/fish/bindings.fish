# bindings.fish

function fish_user_key_bindings
    fish_vi_key_bindings
    bind -M insert \cF 'tmux-sessionizer'
    bind -M insert \v 'tmux-sessionizer ~/.dotfiles'
end
