monitoring
==========

## secrets

Create an `.env` file with the following:

```bash
#/usr/bin/env bash
export GRAFANA_API_KEY="<get from https://grafana.com/orgs/myorg/api-keys>"
export GRAFANA_LOGS_USER="<get from https://myorg.grafana.net/datasources/edit/mylokilogs>"
export GRAFANA_LOGS_URL="<get from https://myorg.grafana.net/datasources/edit/mylokilogs>"
```

and then `source .env` prior to running ansible.


## install locally

`ansible-playbook -i inventory.ini playbook.yaml --extra-vars "variable_host=local" -K`

## run against remotes

`ansible-playbook -i inventory.ini playbook.yaml`
