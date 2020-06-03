git pull
sudo dnf install python3 -y
pip3 install ansible --user
ansible-playbook pb.yml -i "localhost," --extra-vars '@vars.yml' --become --ask-become-pass
source ~/.bashrc
