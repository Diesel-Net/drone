git clone --depth=1 --branch=stable git@github.com:Diesel-Net/drone-inventory.git .ansible/inventories

ansible-galaxy install -r .ansible/roles/requirements.yaml -p .ansible/roles --force
ansible-playbook .ansible/deploy.yaml -i .ansible/inventories/prod.yaml --extra-vars "repository=drone version=prod"

rm -rf .ansible/inventories
