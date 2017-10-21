#!/usr/bin/env bash

# Shortcuts
alias v="vim"
alias l="ls -lFGh"
alias ll='ls -FGlAhp'
alias la="ls -laFG"
alias lsd='ls -lFG | grep "^d"'

alias edit=$EDITOR

# Always use color output for `ls`
alias ls="command ls -G"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# flush the macos dns cache
alias dns-fluh="sudo killall -HUP mDNSResponder"

# improve default grep command
alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# pipe my public ssh key to the clipboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Easier directory traversal/navigation
alias cd..='cd ../'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"
alias -- -="cd -"
alias f='open -a Finder ./'

# display all executable paths
alias path='echo -e ${PATH//:/\\n}'

# ---------------------------------------------------------------------------------------------------
# TODO test and integrate the following aliases
# ---------------------------------------------------------------------------------------------------

#alias cp='cp -iv'                           # Preferred 'cp' implementation
#alias mv='mv -iv'                           # Preferred 'mv' implementation
#alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
#alias less='less -FSRXc'                    # Preferred 'less' implementation
#alias which='type -all'                     # find executables
#alias DT='tee ~/Desktop/terminalOut.txt'    # Pipe content to file on MacOS Desktop

# ---------------------------------------------------------------------------------------------------
# https://xkcd.com/530/ - those are documented here, as long as I don't have a better place for them
# ---------------------------------------------------------------------------------------------------

# XCode
#alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
#alias watchos="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator\ \(Watch\).app"

# remove broken or duplicate entries from the "open with" context menu in finder
#alias fixopenwith="/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;"

# Utils
#alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"
#alias pngcrush="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/pngcrush"
