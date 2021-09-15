# Install docker and docker compose.
sudo apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common cron vim nfs-common wget git &&
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" &&
sudo apt update &&
sudo apt -y install docker-ce &&
sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose &&
sudo chmod +x /usr/local/bin/docker-compose &&
sudo usermod -aG docker ${USER} &&
su - ${USER}
