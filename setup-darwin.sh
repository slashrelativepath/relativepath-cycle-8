# local setup starting with pkg manager code block 
if (which brew)
then
  echo "brew already installed"
else
  echo "installing brew"
  /bin/bash -y -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# code bock to install git if not already
if (which git)
then
  echo "git already installed"
else
  echo "installing git"
  brew install git
fi

# code bock to install nano if not already
if (which nano)
then
  echo "nano already installed" 
else
  echo "installing nano"
  brew install nano
fi
