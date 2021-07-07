[![Build Status](https://drone.kiwi-labs.net/api/badges/Diesel-Net/drone/status.svg)](https://drone.kiwi-labs.net/Diesel-Net/drone)

# drone
Automated deployments of Drone CI

## Deploy Drone for the 1st time

To deploy Drone and configure it with the git repositories and secrets that are defined in [repositories.yaml](.ansible/inventory/production/group_vars/drone/repositories.yaml) and [secrets.yaml](.ansible/inventory/production/group_vars/drone/secrets.yaml) you must run the the setup script manually from the root of this repository. 
```bash
# Run playbook manually
source setup.sh
```

## Updating repository configuration and secrets

After Drone has been deployed, you can easily add repository automation configuration by modifying [repositories.yaml](.ansible/inventory/production/group_vars/drone/repositories.yaml) and [secrets.yaml](.ansible/inventory/production/group_vars/drone/secrets.yaml) and pushing your changes. Look in the [.drone.yaml](.drone.yaml) file to understand what/when/how Drone will update it's configuration. 

Drone will only update its configuration when the changes have been pulled into the `stable` branch per the [.drone.yaml](.drone.yaml). 
