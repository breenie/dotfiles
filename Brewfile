#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
# Install Bash 4
brew install bash

# Install wget with IRI support
brew install wget --enable-iri

# Install everything else
brew install ack
brew install git
#brew install imagemagick
brew install lynx

brew install node
#brew install webkit2png

brew install ant
brew install automake
brew install autoconf
brew install libtool
brew install pkg-config
brew install unrar
brew install xz
brew install zlib
brew install gettext
brew install jpeginfo
brew install mysql
brew install readline
brew install libpng
brew install pcre
brew install sqlite
brew install rabbitmq-c

brew install brew-php-switcher

# TODO check the syntax of this edit
sed -i -e 's/^LoadModule php5_module libexec/apache2/libphp5.so/\#LoadModule php5_module libexec/apache2/libphp5.so/'

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew tap homebrew/versions
brew install homebrew/dupes/grep
brew tap homebrew/homebrew-php
brew install --with-apache --with-homebrew-curl --with-homebrew-openssl --without-snmp --with-gmp php56
brew install php56-twig php56-amqp php56-xdebug php56-apcu php56-imagick php56-mcrypt php56-oauth php56-pdo-pgsql

brew install --with-apache --with-homebrew-curl --with-homebrew-openssl --without-snmp --with-gmp php70

brew install composer

brew install ansible

brew install qt5
brew linkapps qt5

# Add taps...
brew tap homebrew/services
brew tap phinze/cask
brew tap caskroom/cask

# Add fancy quicklook plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Remove outdated versions from the cellar
brew cleanup