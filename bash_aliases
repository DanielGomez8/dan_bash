# Standard aliases
alias ls='ls -GFh'
alias lsa="ls -a"
alias sourcebash="source ~/.bashrc"

# Directory functions
mkcd() {
  mkdir -p -- "$1" && cd -P -- "$1"
}

# GIT aliases
alias gitpu="git push"
alias gits="git status"
alias gitmaster="git checkout master"
alias gitpm="git pull origin master"
alias gitp="git push"
alias gitsw="git switch -"
alias gitaa="git add --all"

gitcom() {
  git commit -m "$1"
}

gitnb() {
  git checkout master && git pull && git checkout -b "$1"
}

gitch() {
  git checkout "$1"
}

gitpushu() {
  git push -u origin `git branch | grep \* | cut -d ' ' -f2`
} 