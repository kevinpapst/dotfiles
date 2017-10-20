#!/usr/bin/env bash

# Shortcuts
alias v="vim"
alias l="ls -lFGh"
alias ll='ls -lsaiGh'
#alias ll='ls -FGlAhp'
alias la="ls -laFG"
alias lsd='ls -lFG | grep "^d"'

# Always use color output for `ls`
alias ls="command ls -G"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# flush the macos dns cache
alias dns-fluh="sudo killall -HUP mDNSResponder"

# XCode
alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
alias watchos="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator\ \(Watch\).app"

# Utils
alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"
alias pngcrush="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/pngcrush"

# pipe my public ssh key to the clipboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# ---------------------------------------------------------------------------------------------------
# TODO test and integrate the following aliases
# ---------------------------------------------------------------------------------------------------
#alias cp='cp -iv'                           # Preferred 'cp' implementation
#alias mv='mv -iv'                           # Preferred 'mv' implementation
#alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
#alias less='less -FSRXc'                    # Preferred 'less' implementation
#alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
#alias ..='cd ../'                           # Go back 1 directory level
#alias ...='cd ../../'                       # Go back 2 directory levels
#alias .3='cd ../../../'                     # Go back 3 directory levels
#alias .4='cd ../../../../'                  # Go back 4 directory levels
#alias .5='cd ../../../../../'               # Go back 5 directory levels
#alias .6='cd ../../../../../../'            # Go back 6 directory levels
#alias edit='subl'                           # edit:         Opens any file in sublime editor
#alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
#alias ~="cd ~"                              # ~:            Go Home
#alias c='clear'                             # c:            Clear terminal display
#alias which='type -all'                     # which:        Find executables
#alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
#alias show_options='shopt'                  # Show_options: display bash options settings
#alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
#alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
#alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop
#
## these are no function but will likely be looked up in bash_aliases
#cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
#ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
