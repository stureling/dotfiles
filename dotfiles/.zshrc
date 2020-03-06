# The following lines were added by compinstall

zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '/home/eric/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

autoload -Uz promptinit
promptinit
prompt walters

alias game++='g++ main.cc -o game_executable -lsfml-graphics -lsfml-window -lsfml-system'
alias ls="ls --color=auto"
alias diskspace="df -h | grep File && df -h | grep sd"
alias calc="python3 -i"
alias g++="g++ -Wall -Wextra -Weffc++ -Wold-style-cast -Woverloaded-virtual -std=c++17 -pedantic -Werror -g"
alias pi="ssh eric@192.168.0.2"
alias :q="exit"
alias please="sudo"

PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/eric/.config/scripts:/home/eric/.gem/ruby/2.7.0/bin
export GEM_HOME=/home/eric/.gem
ruby ~/.fredag/fredag.rb
VISUAL=nvim; export VISUAL EDITOR=nvim; export EDITOR
