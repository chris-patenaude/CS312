# Create new ssh key in the .sshfile without passphrase
ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ""

subnet_ids=(
  192.168.1.21 
  # 192.168.1.22 
  # 192.168.1.23 
  # 192.168.1.24
)

# Push public ssh key to target nodes
ssh-copy-id -i ~/.ssh/id_rsa.pub root@subnet_ids[0]
# ssh-copy-id -i ~/.ssh/id_rsa.pub root@subnet_ids[1]
# ssh-copy-id -i ~/.ssh/id_rsa.pub root@subnet_ids[2]
# ssh-copy-id -i ~/.ssh/id_rsa.pub root@subnet_ids[3]

# Run Ansible Playbook
ansible-playbook ~/webserver.yaml -i ~/hosts.ini

# Get the contents of the 4 servers
curl subnet_ids[0]
# curl subnet_ids[1]
# curl subnet_ids[2]
# curl subnet_ids[3]