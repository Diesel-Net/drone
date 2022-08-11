git clone --depth=1 --branch=stable git@github.com:Diesel-Net/drone-inventory.git .ansible/inventory

export ANSIBLE_CONFIG="$(pwd)/.ansible/ansible.cfg"
#ansible-galaxy install -r .ansible/roles/requirements.yaml -p .ansible/roles --force
ansible-playbook .ansible/deploy.yaml -i .ansible/inventory/production --extra-vars "repository=drone version=prod"

rm -rf .ansible/inventory
