dotfiles
========

This is a very simple .dotfiles repo from a [PHP developer](https://gist.github.com/kevinpapst/24e251a5bf3a01174a231e8eeb13d6cd).
 
You can use it by itself, but I use it primarily as a submodule of my [MacOS development setup](https://github.com/kevinpapst/mac-os-setup).

## Installation

**Attention:** Better safe than sorry!   
This will overwrite already existing .dotfiles in your home directory.

And now that you have been warned: 

```bash
git clone https://github.com/kevinpapst/dotfiles.git
cd dotfiles
cp * ~/ 
source ~/.bash_profile
```

To update, change into your local `dotfiles` repository and then:

```bash
git pull
cp * ~/ 
```

## What you need to know

- the directorx `zsh` is not existing in here, but zsh will look there for custom files


## Thanks ...

* [Ingo Walz](https://github.com/iwalz/) for the idea to read more about public dotfiles
* [Dotfiles](http://dotfiles.github.io/) the unofficial guide to dotfiles on GitHub
* [Kevin Elliott](https://github.com/kevinelliott/.dotfiles) for his repo
* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) for his repo
* [tutsplus](http://net.tutsplus.com/tutorials/tools-and-tips/setting-up-a-mac-dev-machine-from-zero-to-hero-with-dotfiles/)


