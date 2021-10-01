# Monitor the AKS Cluster and the application

## Commands for monitoring applications

`kubectl get <resource type> <resource name>`

`kubectl describe <resource type> <resource name>`

`kubectl logs <pod name>`


Getting more information about your pod and see what nodes are pods running on.

`kubectl get pod -o wide`


Getting the detailed view of the object your are describing. It contains the details of the object itself, as well as any recent events related to that object.

`kubectl describe pods` or `kubectl describe pod <pod name>`


### Run the example

Create configmaps to store html files

`kubectl create configmap server1 --from-file=index.html`
`kubectl create configmap server2 --from-file=index2.html`
`kubectl create configmap healthy --from-file=healthy.html`

Create a two separate deployments so that you could scale them into two separates file.

`kubectl apply -f webdeploy1.yaml`
`kubectl apply -f webdeploy2.yaml`

Create a service so that you could load balance the two pods.

`kubectl apply -f webservice.yaml`

Locate your to external IP and check if the application is running.