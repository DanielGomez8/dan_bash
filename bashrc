# for 'too many open files' issue
ulimit -n 8000

# Source prompt settings
if [ -f ~/.prompt.sh ]; then
    source ~/.prompt.sh
fi

# Source aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Ensure gitpod default settings aren't lost
if [ -f ~/.bashrc.backup ]; then
    source ~/.bashrc.backup
fi 