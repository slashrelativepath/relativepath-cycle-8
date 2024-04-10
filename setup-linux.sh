# linux local set up

if (which nano)
then
  echo "nano is already installed."
else
  echo "Installing nano."
  sudo apt install -y nano
fi

if (which git)
then
  echo "git is already installed."
else
  echo "Installing git."
  sudo apt install -y git
fi

if (multipass --version)
then
  echo "multipass is already installed."
else
  echo "Installing multipass."
  sudo apt install -y multipass
fi
