sudo yum install -y epel-release ansible sshpass

# Create new ssh key in the .sshfile without passphrase
ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ""

ssh-keyscan 192.168.1.21 >> ~/.ssh/known_hosts
ssh-keyscan 192.168.1.22 >> ~/.ssh/known_hosts
ssh-keyscan 192.168.1.23 >> ~/.ssh/known_hosts
ssh-keyscan 192.168.1.24 >> ~/.ssh/known_hosts

# Push public ssh key to target nodes
sshpass -p "password" ssh-copy-id root@192.168.1.21
sshpass -p "password" ssh-copy-id root@192.168.1.22
sshpass -p "password" ssh-copy-id root@192.168.1.23
sshpass -p "password" ssh-copy-id root@192.168.1.24

# Run Ansible Playbook
ansible-playbook ~/webserver.yaml -i ~/hosts.ini

# Get the contents of the 4 servers
curl 192.168.1.21
curl 192.168.1.22
curl 192.168.1.23
curl 192.168.1.24
