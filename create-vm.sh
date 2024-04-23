if (multipass info relativepath)
then
    echo "relativepath vm already exist"
else
    echo "creating relativepath vm"
    multipass launch --name relativepath
fi

if (multipass exec relativepath -- curl localhost)
then
  echo "webserver already deployed"
else
  echo "deploying web server"
  multipass exec relativepath -- sudo apt install -y nginx
fi
