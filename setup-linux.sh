# linux local set up

if (which nano)
then
  echo "nano is already installed."
else
  echo "Installing nano."
  apt install nano
fi

if (which git)
then
  echo "git is already installed."
else
  echo "Installing git."
  apt install git
fi
