
# Start a PHP server from the working directory, optionally specifying the port and filename
function phpserver() {
    local port="${1:-4000}"
    local file="${2}"
    sleep 1 && open "http://127.0.0.1:${port}/" &
    php -S "0.0.0.0:${port}" -ddisplay_errors=0 ${file}
}
