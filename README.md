dotfiles
========

This is a very simple .dotfiles repo from a [developer](https://gist.github.com/kevinpapst/24e251a5bf3a01174a231e8eeb13d6cd) 
and OS X beginner. 

## Installation

### Recommended for most users

```bash
git clone https://github.com/kevinpapst/dotfiles.git ~/.dotfiles
cd ~/.dotfiles/
echo "source ~/.dotfiles/bash.sh" >> ~/.bash_profile
source ~/.dotfiles/bash.sh
```

### Obtrusive method

Attention: This will overwrite already existing .dotfiles in your home directory!
```bash
git clone https://github.com/kevinpapst/dotfiles.git ~/dotfiles
cd ~/dotfiles/
chmod +x install.sh
./install.sh
```

To update, change into your local `dotfiles` repository and then:

```bash
cd ~/dotfiles/
./install.sh --force
```

## Thanks ...

* [Ingo Walz](https://github.com/iwalz/) for the idea to read more about public dotfiles
* [http://dotfiles.github.io/](Dotfiles) for the great collection
* [Kevin Elliott](https://github.com/kevinelliott/.dotfiles) for his repo
* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) for his repo
* [tutsplus](http://net.tutsplus.com/tutorials/tools-and-tips/setting-up-a-mac-dev-machine-from-zero-to-hero-with-dotfiles/)


