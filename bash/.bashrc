# -*- mode: sh -*-

set -o emacs
set -o monitor

### SENSIBLE DEFAULTS    ####
### https://is.gd/ME6s85 ####

# Prevent file overwrite on stdout redirection
# Use `>|` to force redirection to an existing file
set -o noclobber

# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar 2> /dev/null

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Enable extended glob
shopt -s extglob

## SMARTER TAB-COMPLETION (Readline bindings) ##

# Perform file completion in a case insensitive fashion
bind "set completion-ignore-case on"

# Treat hyphens and underscores as equivalent
bind "set completion-map-case on"

# Display matches for ambiguous patterns at first tab press
bind "set show-all-if-ambiguous on"

# https://superuser.com/questions/288714/bash-autocomplete-like-zsh
bind 'TAB:menu-complete'

# Immediately add a trailing slash when autocompleting symlinks to directories
bind "set mark-symlinked-directories on"

## SANE HISTORY DEFAULTS ##

# Append to the history file, don't overwrite it
shopt -s histappend

# Save multi-line commands as one command
shopt -s cmdhist

# Record each line as it gets issued
PROMPT_COMMAND='history -a'

# Huge history. Doesn't appear to slow things down, so why not?
HISTSIZE=500000
HISTFILESIZE=100000

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
HISTTIMEFORMAT='%F %T '

# Enable incremental history search with up/down arrows
# https://is.gd/uzaKXP
# bind '"\e[A": history-search-backward'
# bind '"\e[B": history-search-forward'
# bind '"\e[C": forward-char'
# bind '"\e[D": backward-char'

## BETTER DIRECTORY NAVIGATION ##

# Prepend cd to directory names automatically
shopt -s autocd 2> /dev/null
# Correct spelling errors during tab-completion
shopt -s dirspell 2> /dev/null
# Correct spelling errors in arguments supplied to cd
shopt -s cdspell 2> /dev/null

# This defines where cd looks for targets
# Add the directories you want to have fast access to, separated by colon
# Ex: CDPATH=".:~:~/projects" will look for targets in the current working directory, in home and in the ~/projects folder
CDPATH="."

# This allows you to bookmark your favorite places across the file system
# Define a variable containing a path and you will be able to cd into it
# regardless of the directory you're in
shopt -s cdable_vars

#### END OF SENSIBLE DEFAULTS ####

#### SOURCE OTHER FILES ####

source ~/.bash_aliases
source ~/.env_variables.sh
source ~/.bash_completion.sh
source ~/.pyenv/versions/3.7.4/share/doc/ranger/examples/bash_automatic_cd.sh

#### DEFAULT EDITOR ####

export VISUAL=nvim
export EDITOR=nvim

# export VISUAL="emacsclient --socket-name=term-emacs --alternate-editor='' --create-frame -nw"
# export EDITOR="emacsclient --socket-name=term-emacs --alternate-editor='' --create-frame -nw"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

eval "$(fasd --init posix-alias bash-hook)"
source ~/.fasd-init-bash

[ -z "${PATH##*/sbin*}" ] || PATH=$PATH:/sbin:/usr/sbin
export PATH="${PATH}:usr/bin:~/Desktop:/opt:/opt/google:/~/Desktop:/home/$USER/.local/bin:"

export PATH=~/.local/bin:$PATH

export PATH=$PATH$( find -L ~/scripts -type d -printf ":%p" )

# some keyboard configuration
stty -ixon
set -o ignoreeof
shopt -s checkwinsize

# prompt
# https://unix.stackexchange.com/a/3762

PS1="\033[?17;0;127c\[\e[38;241m[\]\[\e[38;88m\d][\e[38;88m\A\[\e[38;241m]\]\n\[\e[38;241m[\e[38;88m\w\e[38;241m]\e[38;241m\]\n\$ \[\e[0m\]"

# completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# chroot
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

[ -z "$PS1" ] && return

# colored man pages

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
		   LESS_TERMCAP_me=$'\e[0m' \
		   LESS_TERMCAP_se=$'\e[0m' \
		   LESS_TERMCAP_so=$'\e[01;44;33m' \
		   LESS_TERMCAP_ue=$'\e[0m' \
		   LESS_TERMCAP_us=$'\e[01;32m' \
		   command man "$@"
}

# better directory navigation

function e() {
    if [ "$#" = "0" ]
    then
	pushd ${HOME} && clear && ls --color
    elif [ -f "${1}" ]
    then
	${EDITOR} ${1}
    else
	pushd "$1" && clear && ls --color
    fi
}

function b(){
    if [ "$#" = "0" ]
    then
	popd && clear && ls --color
    else
	for i in $(seq ${1})
	do
	    popd && clear && ls --color
	done
    fi
}

function my-shell-go-previous(){
    if [ "$#" = "0" ]
    then
	popd
    else
	for i in $(seq ${1})
	do
	    popd
	done
    fi
}

# mkcd command
# http://superuser.com/questions/152794/is-there-a-shortcut-to-mkdir-foo-and-immediately-cd-into-it

function mcd {
    last=$(eval "echo \$$#")
    if [ ! -n "$last" ]; then
	echo "Enter a directory name"
    elif [ -d "$last" ]; then
	echo "\`$last' already exists"
    else
	mkdir "$@" && clear && cd "$last"
    fi
}
# Emacs Bash Completion

if [[ ( -z "$INSIDE_EMACS" || "$EMACS_BASH_COMPLETE" = "t" ) &&\
	  -f /etc/bash_completion ]]; then
    . /etc/bash_completion
fi

### RANGER PROMPT ###
# from: https://github.com/ranger/ranger/issues/1374
if [ -n "$RANGER_LEVEL" ]; then export PS1="[RANGER]$PS1"; fi

# Load pyenv automatically by adding
# the following to ~/.bashrc:
export PATH="/home/jerry/.pyenv/bin:/home/jerry/.pyenv/shims/ranger:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# nnn cd on quit

nnn_cd_on_quit()
{
    export NNN_TMPFILE=${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd

    nnn "$@"

    if [ -f $NNN_TMPFILE ]; then
            . $NNN_TMPFILE
            rm -f $NNN_TMPFILE > /dev/null
    fi
}
