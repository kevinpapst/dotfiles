
# Create a new directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$@"
}

# Start a PHP server from a directory, optionally specifying the port
function phpserver() {
    local port="${1:-4000}"
    local file="${2}"
    sleep 1 && open "http://127.0.0.1:${port}/" &
    php -S "0.0.0.0:${port}" -ddisplay_errors=0 ${file}
}

function show_my_ip() {
	dig +short myip.opendns.com @resolver1.opendns.com
}

