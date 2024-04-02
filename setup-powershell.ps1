# A script to configure a local powershell 

if (get-command nano)
{
  echo "nano already installed"
}
else 
{
  echo "installing nano"
  choco install -y nano
} 
