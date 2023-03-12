minecraft
=========

## install locally

`ansible-playbook -i ../inventory/homelab.ini playbook.yaml -K`

## run against remotes

`ansible-playbook -i ../inventory/homelab.ini playbook.yaml --extra-vars "hosts=minecraft" -K`

## grafana agent

tail logs

```sh
sudo journalctl -f -u grafana-agent.service
```
