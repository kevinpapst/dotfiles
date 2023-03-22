# Executed once ONLY during a new login shell

# Defaults
export TERM=xterm-256color
export SHELL=/bin/zsh

# Preferred editor for local and remote sessions
export EDITOR='vim'

# make sure casks get installed in the right directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
# ... and that I won't be tracked by Google, see https://docs.brew.sh/Analytics
export HOMEBREW_NO_ANALYTICS=1

# some very useful path assignments
export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/dotfiles/bin:/usr/local/mysql/bin:$PATH
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

###########################################################################
# FIXME this block caused docker problems in later versions
# TODO this should not point to a static location
#if [ -d /usr/local/lib/python2.7/ ]; then
#    export PYTHONPATH=/usr/local/lib/python2.7/site-packages/
#fi

# docker won't start without setting the environment information for every new shell
#if [ `docker-machine status` = "Running" ]; then
#    eval $(docker-machine env)
#fi

###########################################################################
# You may need to adjust your language environment
# export LC_ALL="de_DE.UTF-8"
export LANG=de_DE.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# set the default user so themes and bash can use it to filter away your username from prompt
export DEFAULT_USER=`whoami`

###########################################################################
# https://jekyllrb.com/docs/installation/macos/
# https://github.com/jekyll/jekyll/issues/7274#issuecomment-424401726
if [ -d $HOME/.gem/ruby/2.7.0/bin ]; then
    export PATH=$HOME/.gem/ruby/2.7.0/bin:$PATH
fi
#export GEM_HOME=$HOME/gems
#export PATH=$HOME/gems/bin:$PATH
# setup ruby environment if available
if [ $(command which rbenv) ]; then
    eval "$(rbenv init -)"
fi
#export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

###########################################################################
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
