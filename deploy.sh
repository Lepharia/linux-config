git pull
ansible-playbook pb.yml -i "localhost," --extra-vars '@vars.yml' --become --ask-become-pass
source ~/.bashrc