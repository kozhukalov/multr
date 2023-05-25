This demo chart is to deploy two deamonsets for different sets of nodes. Pods in these two different daemonsets are assumed to consume two different configs from the configmap. Daemonsets start pods with simple nodeselectors.

## Deploy

### Set node labels
```
kubectl label --overwrite nodes node1 node_label=cpu
kubectl label --overwrite nodes node2 node_label=gpu
```

### Deploy first chart release (configmap and cpu daemonset)
```
helm upgrade --install multr ./
```

### Deploy second chart release (gpu daemonset)
```
helm upgrade --install multr2 ./ -f values2.yaml
```

### Look at what we have
```
kubectl get configmap
kubectl get daemonset
kubectl get po
helm list
```

To see the config file mounted inside every pod use the following command
```
kubectl exec -it <pod_name> -- cat /etc/config
```
