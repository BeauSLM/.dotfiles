abbr ls 'exa'
abbr lt 'exa -T'
abbr la 'exa -a'
abbr ll 'exa -la --git'
abbr llt 'exa -la --git -T'
abbr l. "exa -a | rg '^\.'"

#fix obvious typo
abbr upal "paru -Syu --noconfirm"

#readable output
abbr df 'df -h'

# Abbres for software managment
# paru as aur helper - updates everything
abbr upall "paru -Syu --noconfirm"
abbr update 'paru -Syyu --noconfirm'

#ps
abbr psa "ps auxf"
abbr psgrep "ps aux | grep -v grep | grep -i -e VSZ -e"

#get fastest mirrors in your neighborhood
abbr mirror "sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
#our experimental - best option for the moment
abbr mirrorx "sudo reflector --age 6 --latest 20  --fastest 20 --threads 5 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
abbr mirrorxx "sudo reflector --age 6 --latest 20  --fastest 20 --threads 20 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
abbr ram 'rate-arch-mirrors'

#Recent Installed Packages
abbr rip "expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
abbr riplong "expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

#Cleanup orphaned packages
abbr cleanup 'paru -Rns $(paru -Qtdq)'

#get the error messages from journalctl
abbr jctl "journalctl -p 3 -xb"

#maintenance
abbr big "expac -H M '%m\t%n' | sort -h | nl"

#systeminfo
abbr sysfailed "systemctl list-units --failed"

abbr lg 'lazygit'

# Source_Installs
abbr si 'tmux-sessionizer $SI'

# todo
abbr todo 'bat ~/todo/todo.md'
abbr goals 'bat ~/todo/goals.md'

# sudo -> doas
abbr sudo 'doas'
abbr su 'doas -s'

abbr vrc 'tmux-sessionizer $HOME/.config/nvim'
