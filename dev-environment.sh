#!/bin/bash
command=""
read -s -p "Enter sudo password: " sudoPW
if [ "$(uname)" == "Darwin" ]; then
  # Mac OSX Platform
  command="brew install"
  echo "Using MaxOSX"
  echo "Installing brew if it isn't already installed\n"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Couldn't detect OS"
  exit
fi

echo "Installing ruby"
eval "echo $sudoPW | $command ruby"

echo "Installing git"
eval "echo $sudoPW | $command git"

echo "Installing rake"
eval "echo $sudoPW | $command rake"

echo "Installing oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing node.js"
eval "echo $sudoPW | $command node"


