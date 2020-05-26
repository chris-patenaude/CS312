# Create new ssh key in the .sshfile without passphrase
ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ""

# Push public ssh key to target nodes
ssh-copy-id -i ~/.ssh/id_rsa.pub root@192.168.1.21
# ssh-copy-id -i ~/.ssh/id_rsa.pub root@192.168.1.22
# ssh-copy-id -i ~/.ssh/id_rsa.pub root@192.168.1.23
# ssh-copy-id -i ~/.ssh/id_rsa.pub root@192.168.1.24

# Run Ansible Playbook
ansible-playbook ~/webserver.yaml -i ~/hosts.ini

# Get the contents of the 4 servers
curl 192.168.1.21
# curl 192.168.1.22
# curl 192.168.1.23
# curl 192.168.1.24