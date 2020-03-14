
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

autoload -Uz compinit
compinit
autoload -Uz tetriscurses
autoload -Uz promptinit
promptinit
prompt walters

bindkey -v

zstyle ':completion:*' menu select

if [ "$TERM" = "linux" ]; then
    _SEDCMD='s/.*\*color\([0-9]\{1,\}\).*#\([0-9a-fA-F]\{6\}\).*/\1 \2/p'
    for i in $(sed -n "$_SEDCMD" $HOME/.Xresources | awk '$1 < 16 {printf "\\e]P%X%s", $1, $2}'); do
        echo -en "$i"
    done
    clear
fi

PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.gem/ruby/2.7.0/bin:$HOME/.config/scripts

alias ls='ls --color=auto'
alias tarball="tar -czvf"
alias archive="tar -czvf archive.tar.gz"
alias sl="sl && ls"
alias pingtest="ping archlinux.org"
alias diskspace="df -h | grep File && df -h | grep sd"
alias calc="python3 -i"
alias rm="rm -I"
alias mv="mv -i"
alias cp="cp -i"
alias :q="exit"
alias fuck="sudo !!"
alias updatestats="grep upgraded /var/log/pacman.log | awk -F ' ' '{print $5}' | sort | uniq -c | sort -nr"
alias check-keycodes="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\\n\", \$5, \$8 }'"

#Put host specific code here
if [[ $(hostname) == 'saturnus' ]]; then
    alias pi="ssh eric@83.249.165.197"
    (cat $HOME/.config/wpg/sequences &)
elif [[ $(hostname) == 'jupiter' ]]; then
    alias pi="ssh eric@192.168.0.2"
fi

export GEM_HOME=$HOME/.gem
ruby ~/.fredag/fredag.rb

VISUAL=nvim; export VISUAL 
EDITOR=nvim; export EDITOR
