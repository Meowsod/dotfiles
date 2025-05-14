# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# aliases
[ -f $HOME/.bash_aliases ] && . $HOME/.bash_aliases

# funcs
mkcd() {
  mkdir -p "$1" && cd "$1"
}

# export paths
#export PATH="/usr/local/bin:$PATH"
export PATH="/home/$USER/.local/bin:$PATH"

# funny quotes
fortune | cowsay -f '/usr/share/cows/duck.cow' | lolcat
