alias ls='exa'
alias la='ls -a'
alias ll='ls -la --git'
alias l='ls'
alias l.="ls -a | rg '^\.'"

#fix obvious typo
alias upal="paru -Syu --noconfirm"

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#readable output
alias df='df -h'

#continue download
alias wget="wget -c"

# Aliases for software managment
# paru as aur helper - updates everything
alias upall="paru -Syu --noconfirm"
alias update='paru -Syyu --noconfirm'

#ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

#get fastest mirrors in your neighborhood
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
#our experimental - best option for the moment
alias mirrorx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 5 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias mirrorxx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 20 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias ram='rate-arch-mirrors'

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

#Cleanup orphaned packages
alias cleanup='paru -Rns $(pacman -Qtdq)'

#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#maintenance
alias big="expac -H M '%m\t%n' | sort -h | nl"

#systeminfo
alias sysfailed="systemctl list-units --failed"

# nvim config
alias vrc='tmux-sessionizer $DOTFILES/text_editors/.config/nvim'

# Source_Installs
alias si='tmux-sessionizer $SOURCE_INSTALLS'

# todo
alias todo='$EDITOR ~/todo/todo.md'
