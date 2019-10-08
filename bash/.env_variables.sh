#!/usr/bin/env bash

export NNN_BMS='h:/home/jerry;1:/media/jerry/h1;2:/media/jerry/h2;c:/home/jerry/.config;v:/home/jerry/Videos;p:/home/jerry/Pictures;e:/home/jerry/.emacs.d;n:/home/jerry/Downloads;.:/home/jerry/org/Agenda;d:/home/jerry/dotfiles;s:/home/jerry/scripts;d:/home/jerry/Documents;w:/home/jerry/Studying/Prog/WebDev;i:/home/jerry/Studying/Prog/WebDev/04videos;m:/home/jerry/maps;k:/home/jerry/Ebooks'


export NNN_USE_EDITOR=1
export NNN_COPIER=xclip
export NNN_TRASH=1
export s=/usr/share
export PROMPT_DIRTRIM=2
# export EA_EDITOR='emacsclient --socket-name=gui-emacs --alternate-editor="" --create-frame'
export EA_EDITOR='/home/files/dotfiles/scripts/emacs_scripts/eclauncher'
export NVIM_GTK_NO_HEADERBAR=0
export NVIM_GTK_NO_HEADERBAR=1
export XDG_CONFIG_HOME=~/.config
export NVIM_GTK_PREFER_DARK_THEME=1
export RANGER_LOAD_DEFAULT_RC=FALSE
export NVIM_GTK_PREFER_DARK_THEME=1
export MANPAGER="nvim -c 'set ft=man' -c 'set nowrap' -"
export man="/home/dave/.local/share/man/man1"

export FZF_DEFAULT_COMMAND
FZF_DEFAULT_COMMAND="ppd=$(pwd) && fd -H -L -d 3 . $ppd"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export FZF_ALT_C
export FZF_ALT_C_COMMAND="ppd=$(pwd) && fd --hidden --follow --max-depth 3 . $ppd \
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
