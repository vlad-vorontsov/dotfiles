# Dotfiles

My OS X configuration files and scripts.

## Installation

The installation requires [Git](http://git-scm.com) which comes standard with
[Xcode](https://developer.apple.com/xcode/) or the
[Command Line Developer Tools](https://developer.apple.com/downloads/index.action?=command%20line%20tools).

Installing these dotfiles will overwrite already existing files in your home
directory. The `bootstrap` script will prompt you about this before installing
the dotfiles.

```bash
git clone https://github.com/joeploijens/dotfiles.git && cd dotfiles && source bootstrap
```

To update, `cd` into your local `dotfiles` repository and run the `bootstrap` script
again:

```bash
source bootstrap
```

## Features

### OS X Defaults

Custom OS X defaults can be applied by running the following command from
within your local `dotfiles` repository:

```bash
scripts/osx-defaults
```

### Vim Plug-Ins

- [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)

