# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# aliases
[ -f $HOME/.bash_aliases ] && . $HOME/.bash_aliases

# export paths
#home_bin=~/bin
#export PATH=$home_bin:$PATH

# funny quotes
fortune | cowsay -f '/usr/share/cows/duck.cow' | lolcat
