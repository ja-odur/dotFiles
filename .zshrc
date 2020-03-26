#------------------------------
# Variables
#------------------------------
export NEW_LINE=$'\n'

#------------------------------
# git functions
#------------------------------
function git_branch() {
    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
    if [[ $branch == "" ]]; then
        echo " (no-git-branch) "
    else
        echo " ($branch) "
    fi
}

#------------------------------
# Set prompt
#------------------------------
local GIT_BRANCH_NAME='$(git_branch)'
setopt promptsubst
PS1="%F{cyan}%n %F{green}%C %F{blue}${GIT_BRANCH_NAME}:%F{8} ${NEW_LINE}<>> %f"
PS2="<>>"

#------------------------------
# MacOS lang setup
#------------------------------
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#------------------------------
# Alias stuff
#------------------------------
alias ls='ls -FHG'
