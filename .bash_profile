export EDITOR=vim
export PATH=$HOME/bin:/usr/local/mysql/bin:$PATH
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/

for file in ~/.{bash_prompt,aliases,functions}; do
        [ -r "$file" ] && source "$file"
done
unset file

