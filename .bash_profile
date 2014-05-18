export EDITOR=vim
export PATH=/usr/local/bin:$HOME/bin:/usr/local/mysql/bin:$PATH
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/
export ARCHFLAGS="-arch x86_64"

for file in ~/.{bash_prompt,aliases,functions}; do
        [ -r "$file" ] && source "$file"
done
unset file
