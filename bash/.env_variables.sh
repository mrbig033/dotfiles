#!/usr/bin/env bash

export s=/usr/share
export PROMPT_DIRTRIM=2
export EA_EDITOR='emacsclient --socket-name=gui-emacs -a "" -c'
export NVIM_GTK_NO_HEADERBAR=0
export NVIM_GTK_NO_HEADERBAR=1
export XDG_CONFIG_HOME=~/.config
export NVIM_GTK_PREFER_DARK_THEME=1
export RANGER_LOAD_DEFAULT_RC=FALSE
export NVIM_GTK_PREFER_DARK_THEME=1
export MANPAGER="nvim -c 'set ft=man' -c 'set nowrap' -"
export man="/home/dave/.local/share/man/man1"
export FZF_DEFAULT_COMMAND="ppd=$(pwd) && fdfind --hidden --follow --max-depth 3 . $ppd \
-E *\.[Pp]y[Cc]harm* \
-E \.cache \
-E \.git \
-E \.back \
-E \.IdeaIC2018.3 \
-E \.conky \
-E \.dbus \
-E \.gem \
-E \.gnome \
-E \.gnupg \
-E \.kde \
-E \.java \
-E \.nmp \
-E \.thunderbird \
-E \.tmp \
-E \.ssh \
-E \.ssr \
-E \.pki \
-E \.mozilla \
-E \.m2 \
-E \.mplayer \
-E \.texlive \
-E \.thumbnails \
-E \.tooling \
-E \.android . $ppc"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"


# PATH="$NPM_PACKAGES/bin:$PATH"
# PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

# Nodenv - transferir para bash_profile
export PATH="$HOME/.nodenv/versions/12.9.0/bin:$PATH"
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# GO
# export GOROOT="$HOME"/maps/go
# export GOPATH=$HOME/Documents/.goprojects
# export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
