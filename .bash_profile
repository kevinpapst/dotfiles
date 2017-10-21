# Executed once ONLY during a new login shell

# Defaults
export TERM=xterm-256color
export SHELL=/bin/zsh

# Preferred editor for local and remote sessions
export EDITOR='vim'

# make sure casks get installed in the right directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# some very useful path assignments
export PATH=/usr/local/bin:$HOME/bin:$HOME/dotfiles/bin:/usr/local/mysql/bin:$PATH
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# TODO this should not point to a static location
if [ -d /usr/local/lib/python2.7/ ]; then
    export PYTHONPATH=/usr/local/lib/python2.7/site-packages/
fi

# You may need to adjust your language environment
# export LC_ALL="de_DE.UTF-8"
export LANG=de_DE.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# set the default user so themes and bash can use it to filter away your username from prompt
export DEFAULT_USER=`whoami`

# setup ruby environment if available
if [ $(command which rbenv) ]; then
    eval "$(rbenv init -)"
fi

# finally load all the custom dotfiles
DOTFILES=( ~/.bash_aliases ~/.bash_functions ~/.bash_local ~/dotfiles/.local )
for dotfile in "${DOTFILES[@]}"; do
    [ -r "$dotfile" ] && [ -f "$dotfile" ] && source $dotfile;
done
unset dotfile;
unset DOTFILES;


##################################################################################################
# I keep the following stuff for documentation purpose and further tweaking                      #
##################################################################################################

# ssh (only use if you do not use id_rsa or the ssh config)
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Don’t clear the screen after quitting a manual page (useful but also disturbing)
# export MANPAGER="less -X"

