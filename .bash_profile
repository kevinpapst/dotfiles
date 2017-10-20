# Executed once ONLY during a new login shell

# Defaults
export SHELL=/bin/zsh

# my favourite editor
export EDITOR=vim
# export EDITOR=atom
# export EDITOR=nano

# make sure casks get installed in the right directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

export PATH=/usr/local/bin:$HOME/bin:$HOME/dotfiles/bin:/usr/local/mysql/bin:$PATH
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/

# Prefer language and encoding
#export LC_ALL="de_DE.UTF-8"
#export LANG="de_DE"

# Don’t clear the screen after quitting a manual page (useful but also disturbing)
# export MANPAGER="less -X"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

DOTFILES=( "~/.bash_aliases" "~/.bash_functions" "~/.bash_local" "~/dotfiles/.local" )
for dotfile in "${DOTFILES[@]}"
do
    if [ -f $dotfile ]; then
        source $dotfile
    fi
done
