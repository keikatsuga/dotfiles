#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '  #default
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

alias mvt='mv *.torrent /home/archzenki/torrents/watch'
alias sct='screen -x rtorrent'
alias pacman='sudo aura'
alias sci='screen -x irssi'
alias aura='sudo aura'
alias lstg='~/bin/lst.sh'
alias ta='tmux attach'
alias vc='~/bin/vcs.sh'
alias sshk='ssh -p 33333 5.39.93.71'
alias mkwaf='~/bin/mkwaf.sh'
alias mktmu='~/bin/mktmu.sh'
alias mktbh5='~/bin/mktbh5.sh'
alias mktptp='~/bin/mktptp.sh'
alias papt='~/bin/papt.sh'
alias gdown='~/bin/gdown.pl'

#for pyroscope
alias rthot="watch -n10 'rtcontrol -rs up,down,name xfer=+0 2>&1'"
alias rtmsg="rtcontrol -s alias,message,name 'message=?*' message=\!*Tried?all?trackers*"
alias rtmsgstats="rtcontrol -q -s alias,message -o alias,message 'message=?*' message=\!*Tried?all?trackers* | uniq -c"
alias rt3days="rtcontrol -scompleted -ocompleted,is_open,up.sz,ratio,alias,name completed=+3d"
alias rt1ratio="rtcontrol -scompleted -ocompleted,is_open,up.sz,ratio,alias,name ratio=+1"

#for tmux
#if [[ -z "$TMUX" ]] ;then
#    ID="`tmux ls | grep -vm1 attached | cut -d: -f1`" # get the id of a 
#deattached session
#    if [[ -z "$ID" ]] ;then # if not available create a new one
#        tmux new-session
#    else
#        tmux attach-session -t "$ID" # if available attach to it
#    fi
#fi
export VISUAL=vim
export EDITOR="$VISUAL"
export HISTCONTROL=ignoredups
export PATH=$PATH:~/.lib/pyroscope/bin/

export FBFONT=/usr/share/kbd/consolefonts/ter-216n.psf.gz
