# Relative Path Cycle 8
A repo for cycle 8 of RelativePath

## Local Machine Setup

### On Linux or Darwin (Mac)

`bash setup-$(echo $(uname) | tr "[:upper:]" "[:lower:]").sh`

### On Windows

`set-executionpolicy bypass -scope process -force; ./setup-powershell.ps1`

#### Note on Networking
When using virtualbox you may need to set your networking to bridged.

find out what networks you have:
`multipass networks`

check the bridge network setting:
`multipass get local.bridged-network`

Set the bridge network to your active network:
`multipass set local.bridged-network=Wi-Fi`

### Delete VM 
`bash delete-vm.sh`

# Find your machine usage
` echo $(uname)`


