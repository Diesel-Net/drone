git clone --depth=1 --branch=stable git@github.com:Diesel-Net/drone-inventory.git .ansible/inventory

export ANSIBLE_CONFIG="$(pwd)/.ansible/ansible.cfg"
ansible-galaxy install -r .ansible/roles/requirements.yaml -p .ansible/roles --force
ansible-playbook .ansible/deploy.yaml -i .ansible/inventory/production/hosts --vault-id ~/.tokens/master_id --extra-vars "repository=drone version=production"

rm -rf .ansible/inventory
