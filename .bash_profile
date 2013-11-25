export EDITOR=vim
export PATH=$HOME/bin:/usr/local/mysql/bin:$PATH

for file in ~/.{bash_prompt,aliases,functions}; do
        [ -r "$file" ] && source "$file"
done
unset file

