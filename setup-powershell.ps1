# A script to configure a local powershell

if (get-command choco)
{
  echo "Choco already installed"
}
else
{
  echo "Installing choco..."
  Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}


if (get-command git)
{
  echo "Git already installed."
}
else
{
  echo "Installing git..."
  choco install -y git.install --params "'/GitAndUnixToolsOnPath /WindowsTerminal /NoAutoCrlf'" --force
}


if (get-command nano)
{
  echo "Nano already installed."
}
else
{
  echo "Installing Nano..."
  choco install -y nano
}


if (get-command multipass)
{
  echo "Multipass already installed."
}
else
{
  echo "Installing Multipass..."
  choco install -y multipass
}
