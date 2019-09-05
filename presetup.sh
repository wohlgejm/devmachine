# Install git and curl, which are requirements to add
# the machine's ssh key to github
sudo apt install git
sudo apt install curl

if [[ -z "$TOKEN" ]]; then
    echo "Must provide github personal access token" 1>&2
    exit 1
fi
./github.sh

git clone git@github.com:wohlgejm/devmachine.git
