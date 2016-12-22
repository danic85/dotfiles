# development tasks
alias vi="vim"
alias g="git"
alias gc="git checkout"
alias gs="git status"
alias gb="git checkout -b"
alias gd="git diff"
alias gpull="git pull origin"
alias gpush="git push origin"
alias gf="git fetch"
alias gg="git grep"
alias gl="git log"
alias grh="git reset head --hard"
alias b='bundle'
alias be='bundle exec'
alias rs='bundle exec rspec'
alias guard='title GUARD ${PWD##*/}; bundle exec guard && wait $!; title Console'
alias evergreen="be rails s -p 4000"
alias dj="be rake jobs:clear jobs:work"
alias pxml="cumulusci dev update_package_xml"
alias gclean='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

alias retropie='ssh pi@retropie'
alias zero='ssh pi@raspberrypi'
alias zoom="echo \"https://zoom.us/j/4265191537\""

# Directory Nav
alias ..="cd .."
alias ...="cd ../.."
alias dev="cd ~/development"
alias sl="cd ~/development/sage-live/workspace/Sage-Live-Core-Financials"
alias dnx="cd ~/development/private"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

for i in ~/dev/*
do
   alias $(basename $i)="cd '$i'"
done

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# search functions
alias findfile='find . -iname'
alias inspect='du -csh'
alias fsearch='git ls-files | grep'
