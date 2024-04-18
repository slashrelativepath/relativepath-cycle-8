if (multipass info relativepath)
then
    echo "relativepath vm already exist"
else
    echo "creating relativepath vm"
    multipass launch --name relativepath
fi
