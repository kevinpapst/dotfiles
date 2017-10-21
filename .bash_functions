#!/usr/bin/env bash

#
# I have to admit:
# The function were written by talented devs from various .dotfiles packages where the original author is unknown
#

function f()            { find . -iname "*$1*" ${@:2} }
function r()            { grep "$1" ${@:2} -R . }
function mkd()          { echo "Creating $@" && mkdir -p "$@" && cd "$@" }
function show_my_ip()   { dig +short myip.opendns.com @resolver1.opendns.com }
function tre()          { tree -aC -I '.git|node_modules|bower_components' --dirsfirst "$@" | less -FRNX; }
function trash ()       { command mv "$@" ~/.Trash ; }
function cdfinder()     { cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')"; }
function digga()        { dig +nocmd "$1" any +multiline +noall +answer; }

# Start a PHP server from a directory, optionally specifying the port
function phpserver() {
    local port="${1:-4000}"
    local file="${2}"
    sleep 1 && open "http://127.0.0.1:${port}/" &
    php -S "0.0.0.0:${port}" -ddisplay_errors=0 ${file}
}

# Determine size of a file or total size of a directory
function fs() {
	if du -b /dev/null > /dev/null 2>&1; then
		local arg=-sbh;
	else
		local arg=-sh;
	fi
	if [[ -n "$@" ]]; then
		du $arg -- "$@";
	else
		du $arg .[^.]* ./*;
	fi;
}

# Use Git’s colored diff when available
hash git &>/dev/null;
if [ $? -eq 0 ]; then
	function diff() {
		git diff --no-index --color-words "$@";
	}
fi;

# Create a data URL from a file
function dataurl() {
	local mimeType=$(file -b --mime-type "$1");
	if [[ $mimeType == text/* ]]; then
		mimeType="${mimeType};charset=utf-8";
	fi
	echo "data:${mimeType};base64,$(openssl base64 -in "$1" | tr -d '\n')";
}

# Start an HTTP server from a directory, optionally specifying the port
function server() {
	local port="${1:-8000}";
	sleep 1 && open "http://localhost:${port}/" &
	# Set the default Content-Type to `text/plain` instead of `application/octet-stream`
	# And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
	python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port";
}

# Syntax-highlight JSON strings or files
# Usage: `json '{"foo":42}'` or `echo '{"foo":42}' | json`
function json() {
	if [ -t 0 ]; then # argument
		python -mjson.tool <<< "$*" | pygmentize -l javascript;
	else # pipe
		python -mjson.tool | pygmentize -l javascript;
	fi;
}

# UTF-8-encode a string of Unicode symbols
function escape() {
	printf "\\\x%s" $(printf "$@" | xxd -p -c1 -u);
	# print a newline unless we’re piping the output to another program
	if [ -t 1 ]; then
		echo ""; # newline
	fi;
}

