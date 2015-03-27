#!/usr/bin/env bash
#
# brew.sh
#
# Use this file to install command-line tools via Homebrew.


# Check if Homebrew is installed
if ! [[ -n $(command -v brew) ]]; then
  echo "Install Homebrew first. See http://brew.sh"
  exit 1
fi

# Update Homebrew itself
brew update

# Upgrade any already installed formulae
brew upgrade

# Remove outdated versions from the cellar
brew cleanup

# Install more up to date versions of software provided by OS X
brew install bash
brew install openssl
brew install homebrew/dupes/rsync

# Install common useful software
brew install ack
brew install flac
brew install ssh-copy-id
brew install tree
brew install unrar
brew install wget
brew install xz

# Install image processing tools
brew install graphicsmagick --with-little-cms2 --without-magick-plus-plus
brew install jhead

# Install Ruby version management tools
brew install --HEAD rbenv
brew install ruby-build

# Install some database tools
brew install joeploijens/tap/mysql
brew install joeploijens/tap/postgresql
brew install joeploijens/tap/instant-client
brew install mongodb
brew install redis

# Install some extra fun stuff
brew install spark

# Remove outdated versions from the cellar
brew cleanup
