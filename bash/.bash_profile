# -*- mode: sh -*-

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

eval "$(nodenv init -)"
