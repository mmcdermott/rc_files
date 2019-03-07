# I often want to see a list of all elements in a directory, with human readable
# syntax.
alias lh='ls -lah'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Common package management commands should not take 3 commands apiece.
alias install='sudo apt-get install'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias autoremove='sudo apt autoremove'

# Tmux should always start in 64-bit color mode.
alias tmux='tmux -2'

# For SSH keys that live in a different spot:
alias setup_ssh='eval "$(ssh-agent -s)"; ssh-add ~/.ssh/private/id_rsa'
