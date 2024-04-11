# homebrew should be installed 
if (which brew)
then
  echo "brew already installed"
else
  echo "installing brew"
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# git should be installed
if (which git)
then
  echo "git already installed"
else
  echo "installing git"
  brew install git
fi

# nano should be installed
if (which nano)
then
  echo "nano already installed" 
else
  echo "installing nano"
  brew install nano
fi

# multipass should be installed
if (multipass version)
then
  echo "multipass already installed"
else
  echo "Installing multipass"
  brew install multipass
fi
