git clone --depth=1 --branch=stable git@github.com:Diesel-Net/drone-inventory.git .ansible/inventory

pip install -r .ansible/files/requirements.txt

export ANSIBLE_CONFIG="$(pwd)/.ansible/ansible.cfg"

ansible-playbook .ansible/deploy.yaml -i .ansible/inventory/production/hosts --vault-id ~/.tokens/master_id
ansible-playbook .ansible/configure_repositories.yaml -i .ansible/inventory/production/hosts --vault-id ~/.tokens/master_id
ansible-playbook .ansible/configure_secrets.yaml -i .ansible/inventory/production/hosts --vault-id ~/.tokens/master_id
ansible-playbook .ansible/configure_cron_jobs.yaml -i .ansible/inventory/production/hosts --vault-id ~/.tokens/master_id

pip uninstall -r .ansible/files/requirements.txt -y

rm -rf .ansible/inventory
