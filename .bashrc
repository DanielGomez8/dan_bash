
# for 'too many open files' issue
ulimit -n 8000


#prompt colors and stuff
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[36m\]\u\[\033[m\]:\[\033[33;1m\]\w\[\033[m\]\[\033[0;35m\]$(__my_git_ps1)\[\033[m\]$ '
#export PS1='\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\[\033[0;35m\]$(__my_git_ps1)\[\033[m\]$ '

# My functions
__my_git_ps1 ()
{
  if [ "`type __git_ps1 2>/dev/null | grep function`" ]; then
    __git_ps1 " (%s)"
  fi
}
alias ls='ls -GFh'

##########
#Aliases#
#########

#Standard aliases
alias lsa="ls -a"
alias sourcebash="source ~/.bash_profile"


mkcd()
{
  mkdir -p -- "$1" && cd -P -- "$1"
}

#GIT aliases
alias gitpu="git push"
alias gits="git status"
alias gitmaster="git checkout master"
alias gitpm="git pull origin master"
alias gitp="git push"
alias gitsw="git switch -"
alias gitaa="git add --all"

gitcom()
{
  git commit -m "$1"
}

gitnb()
{
  git checkout master && git pull && git checkout -b "$1"
}

gitch()
{
  git checkout "$1"
}

gitpushu()
{
  git push -u origin `git branch | grep \* | cut -d ' ' -f2`
}
