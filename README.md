# Kubernetes (k8s)

My learning journey in Kubernetes.

## Basic kubectl command

Extracting specific field from the object using JSONPath query language to select fields in the returned object.

`$ kubectl get pod my-pod -o jsonpath --template={.status.podIP}`

Displaying kubernetes object via json or yaml use `-o json` or `-o yaml`

`$ kubectl get pod mypod -o json`

or

`$ kubectl get pod mypod -o yaml`

## Creating a Pod

In this command, kubernetes will display a yaml file and it will try to run the command but it will not create a pod directly. This is useful if you wanted to create a yaml files for the pod that you wanted to run only.

`$ kubectl run my-pod --image=gcr.io/kuar-demo/kuard-amd64:blue --dry-run -o yaml`

## Debugging your Pod in Kubernetes

Get the logs of a Pod

`$ kubectl logs <pod-name>`

Go to a running container inside a Pod

`$ kubectl exec -it <pod-name> -- sh`

Access to your pod directly using port-forward

`$ kubectl port-forward <pod-name> 8080:80`

In this example to port will expose to 8080 and will target the port of your which is 80.
