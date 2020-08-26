export PATH=~/bin:/usr/local/bin:~/code/scripts:$PATH
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
source ~/code/scripts/completions/eg.sh

# pyenv                                                                                                                                                                           
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)";
fi

# for 'too many open files' issue
ulimit -n 8000


#add key to the terminal session for github to use for aut
ssh-add ~/.ssh/id_rsa

#prompt colors and stuff
source $HOME/prompt.sh

##########
#Aliases#
#########

#Standard aliases
alias lsa="ls -a"
alias sourcealias="source ~/.bash_profile"

mkcd()
{
  mkdir -p -- "$1" && cd -P -- "$1"
}

#GIT aliases
alias gitpu="git push"
alias gits="git status"
alias gitmaster="git checkout master"
alias gitpullmaster="git pull origin master"
alias gitp="git push"

gitcom()
{
  git commit -m "$1"
}

gitnb()
{
  git checkout master && git pull && git checkout -b "$1"
}

gitpushu()
{
  git push -u origin `git branch | grep \* | cut -d ' ' -f2`
}

