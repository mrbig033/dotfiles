# -*- mode: sh -*-

alias aas='clear && aptitude search'
alias ass='clear && aptitude search'
alias ins='clear && apt list --installed -a'
alias all='clear && apt list -a'
alias ai='sudo aptitude install'
alias aii='sudo aptitude -y install'
alias install='sudo gdebi'
alias update='clear && sudo aptitude -y update && sudo apt -y autoremove && sudo apt -y autoclean'

# alias at='clear && tmux attach &>/dev/null'
alias tr='tmux rename-session'
alias tks='tmux kill-session -t'
alias tk='tmux kill-server'
alias 0='clear && tmux attach -t 0 &>/dev/null || tmux switch-client -t 0 &>/dev/null'
alias 1='clear && tmux attach -t 1 &>/dev/null || tmux switch-client -t 1 &>/dev/null'
alias 2='clear && tmux attach -t 2 &>/dev/null || tmux switch-client -t 2 &>/dev/null'
alias 3='clear && tmux attach -t 3 &>/dev/null || tmux switch-client -t 3 &>/dev/null'
alias 4='clear && tmux attach -t 4 &>/dev/null || tmux switch-client -t 4 &>/dev/null'
alias 5='clear && tmux attach -t 6 &>/dev/null || tmux switch-client -t 6 &>/dev/null'
alias 7='clear && tmux attach -t 7 &>/dev/null || tmux switch-client -t 7 &>/dev/null'
alias 8='clear && tmux attach -t 8 &>/dev/null || tmux switch-client -t 8 &>/dev/null'
alias 9='clear && tmux attach -t 9 &>/dev/null || tmux switch-client -t 9 &>/dev/null'

# alias bc='clear && tmux attach -t bc &>/dev/null || tmux switch-client -t bc &>/dev/null'
alias bc="clear && nvim ~/.bash_aliases		        \
			~/.bashrc			\
			~/.bash_completion.sh           \
			~/.inputrc			\
			~/.bash_profile			\
			~/.env_variables.sh		\
                        ~/.profile                      \
			~/.tmux.conf			"

alias nc="clear && nvim ~/.config/nvim/mappings.vim	\
			~/.config/nvim/plugins.vim	\
			~/.config/nvim/abbrevs.vim	\
			~/.config/nvim/mappings.vim	\
			~/.config/nvim/init.vim		\
			~/.vimrc			"

alias pfix='pulseaudio -k && sleep 3 && pulseaudio --start &'
alias pe='source ~/scripts/cline_scripts/initialize-pyenv'



# alias wt='watson'
# alias t='task'
# alias tw='timew'
# alias tt='~/scripts/taskwarrior/task-completed'
# alias twd='ranger ~/.timewarrior/data'
# alias th='clear && ls ~/scripts/taskwarrior'

# alias t='python ~/maps/t/t.py --task-dir ~/org/Info/Config/ttasks --list tasks'
# alias ttd='python ~/maps/t/t.py --task-dir ~/org/Info/Config/ttasks --list tasks -f'
# alias te='python ~/maps/t/t.py --task-dir ~/org/Info/Config/ttasks --list tasks -e'

alias install_emacs='./configure && make && sudo make install'
alias nnn='emacs -nw'
alias a='cd ~/.emacs.d/ && clear && ls --color'

alias gitrmca='git rm -r --cached'
alias gitrm='git rm -r'
alias cl='git clone'
alias push='clear && git push && ls --color'
alias gitclean='git gc --aggressive --prune=all'

alias desligar='sudo shutdown -h now'
alias sudo=' sudo'
alias rm='rm -i'
alias install_gpg_key='gpg --recv-key'
alias yt='youtube-dl --format mp4 --sub-lang en,pt,pt-br --audio-quality 0'
alias r='e -'
alias w='e ..'
alias n='nvim'
alias c='clear'
alias md='mkdir'
alias ll='ls -l'
alias lt='ls -l --time-style=+"%a %H:%M:%S"'
alias g='grep -i'
alias fl='flatpak'
alias tv='tvnamer'
alias wh='whereis'
alias sym='ln -rsf'
alias pk='pkill -fi'
alias tp='trash-put'
alias fr='flatpak run'
alias qq='clear && exit'
alias pat='patch -Np1 -i'
alias time='/usr/bin/time'
alias setblank='xset dpms'
alias ls='ls --color=always'
alias chmode='chmod -Rc 755'
alias chmodax='chmod a-x'
alias chowne='chown --recursive --changes $USER'
alias chowne-root='chown --recursive --changes $USER'
alias free='clear && free --human'
alias rfonts='fc-cache -f -v'
alias empty='sudo trash-empty'
alias kk='clear && xbindkeys -k'
alias k='kill -9'
alias xreload='xbindkeys --poll-rc'
alias gg='clear && exec "$BASH"'
alias cc='clear && ls -A --color'
# alias cc='clear && ls --color=always'
alias sm='sudo make clean install'
alias restore='sudo restore-trash'
alias lo='sudo updatedb && locate'
alias smki='sudo make clean install'
alias gig='clear && nvim .gitignore'
alias x='xclip -selection clipboard'
alias smci='sudo make clean checkinstall'
alias grc='ps ax | grep -v grep | egrep -i "chrome"'
alias ge='clear && ls -Al --color | grep -i'
alias sp='export PS1="\e[38;5;196m$ \[\e[0m\]"'
alias alternatives='sudo update-alternatives --config'
alias qt='qbittorrent & ~/scripts/i3_scripts/hide/hide_only_terms'
alias alternatives_editor='sudo update-alternatives --config editor'
alias pwx="clear && dirs +0 | \\tr -d '\n' | xclip -selection clipboard"
alias gcs='i3-msg "[title=term-up]" move scratchpad & google-chrome-stable &>/dev/null &'
alias pi='pip install'
alias p='clear && python -q'
alias pii='pip install --user'
alias wall='feh --bg-fill'
alias ir='clear && irssi'
alias i3r='i3-msg restart && clear'
alias suspend='pm-suspend'
alias tep='cd ~/.texpander && clear && ls --color'
alias sa='source ~/.bash_aliases'
alias irt='xfce4-terminal -T term-irssi --execute irssi &>/dev/null &'
alias beeti='beet import --quiet'
alias jj='jmacs'
alias test='cd ~/Documents/Testing/ && clear && ls --color=always'
alias ag='sudo ag'
alias bb='bat'
alias gparted='~/scripts/cline_scripts/gparted'
alias vi='vim.tiny'
alias poff='sudo poweroff'
# alias poff='xfce4-session-logout --halt'
alias reboo='xfce4-session-logout --reboot'
alias logo='xfce4-session-logout --logout'
# alias sc='clear && mit-scheme'
alias al='alias'
alias z='zathura'
alias i3x='i3-msg exit'
alias wg='wget'
alias hosts='sudo nvim /etc/hosts'
alias share='clear && cd /usr/share'
alias fixusb='echo "sudo dd if=/dev/zero of=/dev/sdc bs=2048 count=32"'
alias i3r='i3-msg restart'
alias cm='clear && cd ~/Music && cmus'
alias gotoranger='clear && tmux attach -t ranger &>/dev/null || tmux switch-client -t ranger &>/dev/null'
alias i3up='st2 -t term-up -n term-up'
alias i3ranger='st2 -t term-ranger -n term-ranger -e ~/.pyenv/shims/ranger'
alias timeshift='sudo timeshift-gtk &>/dev/null &'
alias et='emacsclient --socket-name=term-emacs --create-frame -nw'
alias fd='fdfind'
alias no='clear && node'
alias s='jmacs'
alias sc='sc-im'
alias RK='setxkbmap -option br'
alias xl='xfce4-session-logout --logout'
alias git_cleanup='git gc --aggressive --prune'
alias rtm='clear && rememberthemilk'
alias med='clear && cd /media/jerry && clear && ls --color=always'
alias ul='unlink'
alias j='fasd'
