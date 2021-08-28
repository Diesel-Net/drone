[![Build Status](https://drone.kiwi-labs.net/api/badges/Diesel-Net/drone/status.svg)](https://drone.kiwi-labs.net/Diesel-Net/drone)

# drone
Automated deployments of Drone CI

## requirements
  - ansible-core 2.11+

## Deploy Drone for the 1st time

To deploy Drone and configure it for the first time, you must run the the setup script manually from the root of this repository. Some of the secrets are highly sensitive so that data has been factored out into a private repo, in addition to being vaulted. See [setup.sh](setup.sh) for more clarity.
```bash
# Run playbook manually
source setup.sh
```
