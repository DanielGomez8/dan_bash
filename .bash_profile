if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
source ~/code/scripts/completions/eg.sh

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"


# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)";
fi

#add key to the terminal session for github to use for aut
ssh-add ~/.ssh/id_rsa

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
alias atombash="atom ~/.bash_profile"

mkcd()
{
  mkdir -p -- "$1" && cd -P -- "$1"
}

#GVL Aliases
alias runpapi="rm -rf ~/gvl/PAPI/build && cd ~/gvl/PAPI/ && grails run-app -port 8090"
alias runcricket="~/gvl/cricket/ && grails run-app"
alias testpapi="yarn test --watch=false --cricketEnv=testing --papiEnv=testing-papi --data=production-restore --schemas"



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

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/dgomez/.sdkman"
[[ -s "/Users/dgomez/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/dgomez/.sdkman/bin/sdkman-init.sh"
