monitoring
==========

## secrets

Create an `.env` file with the following:

```bash
#/usr/bin/env bash

export GRAFANA_API_KEY="<get from https://grafana.com/orgs/myorg/api-keys>"

# logs
export GRAFANA_LOGS_USER="<get from https://myorg.grafana.net/datasources/edit/mylokilogs>"
export GRAFANA_LOGS_URL="<get from https://myorg.grafana.net/datasources/edit/mylokilogs>"

# metrics
export GRAFANA_METRICS_USER="<get from https://myorg.grafana.net/datasources/edit/myprom>"
export GRAFANA_METRICS_REMOTE_WRITE_URL="<get from https://myorg.grafana.net/datasources/edit/myprom>/push"
```

and then `source .env` prior to running ansible.


## install locally

`ansible-playbook -i ../inventory/homelab.ini playbook.yaml -K`

## run against remotes

`ansible-playbook -i ../inventory/homelab.ini playbook.yaml --extra-vars "hosts=homelab" -K`

## grafana agent

tail logs

```sh
sudo journalctl -f -u grafana-agent.service
```
