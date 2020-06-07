sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker

sudo systemctl restart docker
docker run hello-world
