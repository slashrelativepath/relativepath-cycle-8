# local setup 
if (which brew)
then
  echo "brew already installed"
else
  echo "installing brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

if (which git)
then
  echo "git already installed"
else
  echo "installing git"
  brew install git
fi

if (which nano)
then
  echo "nano already installed" 
else
  echo "installing nano"
  brew install nano
fi
