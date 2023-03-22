# ZSH options combined with oh-my-zsh configs
# See https://github.com/robbyrussell/oh-my-zsh/blob/master/templates/zshrc.zsh-template

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# Some I like (but I did not try many): robbyrussell, random, clean, agnoster
ZSH_THEME="agnoster"

# My custom configs live in here
ZSH_CUSTOM=~/dotfiles/zsh

# Default plugins can be found in ~/.oh-my-zsh/plugins/
# Custom plugins can be added to $ZSH_CUSTOM/plugins/
# Homebrew plugins needs to be loaded differently, as it uses another place for storage
plugins=(git)
BREW_PLUGINS=( zsh-autosuggestions )

# load plugins installed via homebrew
BREW_PREFIX=$(brew --prefix)
for brew_plugin in $BREW_PLUGINS; do
    if which brew &> /dev/null && [ -f "$BREW_PREFIX/share/$brew_plugin/$brew_plugin.zsh" ]; then
        source $BREW_PREFIX/share/$brew_plugin/$brew_plugin.zsh
    fi
done
unset brew_plugin
unset BREW_PLUGINS
unset BREW_PREFIX

# some more options you can fiddle around with:
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# I know that oh-my-zsh doesn't like that, but I am not going to keep all settings in multiple files.
# For now lets live with that solution, maybe I am going to switch to .zshrc completely, but until then just make
# sure that ~/bash_profile is compatible with zsh
source ~/.bash_profile

# AUTOCOMPLETE FOR SSH FROM ~./ssh/config - @see https://www.codyhiar.com/blog/zsh-autocomplete-with-ssh-config-file/
zstyle ':completion:*:(scp|rsync):*' tag-order ' hosts:-ipaddr:ip\ address hosts:-host:host files'
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-host' ignored-patterns '*(.|:)*' loopback ip6-loopback localhost ip6-localhost broadcasthost
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-ipaddr' ignored-patterns '^(<->.<->.<->.<->|(|::)([[:xdigit:].]##:(#c,2))##(|%*))' '127.0.0.<->' '255.255.255.255' '::1' 'fe80::*'
autoload -Uz compinit && compinit -i

# load the oh-my-zsh environment
source $ZSH/oh-my-zsh.sh
