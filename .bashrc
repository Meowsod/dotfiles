# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#env
PS1='[\u@\h \W]\$ '

# aliases
[ -f $HOME/.bash_aliases ] && . $HOME/.bash_aliases

# funcs
mkcd() {
  mkdir -p "$1" && cd "$1"
}

# export paths
#export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"

#fun TODO: lolcat/f -o?
printf '\033[0;32m'; fortune -a | cowsay; printf '\033[0m'
