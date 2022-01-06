# drone
Drone CI on Docker Swarm.

## requirements
  - ansible-core 2.11+

## Deploy Drone

To deploy Drone and/or update the server, you must run the the deployment script manually from the root of this repository. Some of the secrets are highly sensitive so that data has been factored out into a private repo, in addition to being vaulted. See [deploy.sh](deploy.sh) for more clarity.
```bash
# Run playbook manually
source deploy.sh
```
