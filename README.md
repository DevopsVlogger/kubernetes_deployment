# kubernetes_deployment

This repository is to deploy the kubernetes cluster on your on-prem/virtual or cloud environments.

## Run the following command to deploy Kubernetes Master Node ->

```
ansible-playbook master_deploy.yaml -i kube_inventory --limit kmaster -e ansible_python_interpreter=/usr/bin/python2.7 -u root
```


## Run the following command to deploy Kubernetes Worker Nodes ->

```
ansible-playbook worker-deploy.yaml -i kube_inventory --limit kworkers -e ansible_python_interpreter=/usr/bin/python2.7 -u root
```

