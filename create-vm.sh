if (test -f ./id_ed25519)
then
  echo "ssh keypair already exists"
else
  echo "creating ssh keypair"
  ssh-keygen -t ed25519 -f ./id_ed25519 -N ''
fi

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

if (ssh ubuntu@$(multipass info relativepath | grep IPv4 | awk '{ print $2 }') 'exit')
then
  echo "able to connect using ssh"
else
  echo "adding ssh pub key to VM from GitHub"
  multipass exec relativepath -- bash -c "curl https://github.com/harmonymorse.keys >> .ssh/authorized_keys"
fi
