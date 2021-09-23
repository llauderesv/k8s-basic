# Techniques for working with ConfigMaps

1. Using a k8s ConfigMap manifest yaml: `kubectl create -f settings.configmap.yml`
2. Load settings from a file: `kubectl create app-settings --from-file=settings.properties`. Will add file name as key into ConfigMap data. Will NOT add quotes around non-string values.
3. Load settings from an env file: `kubectl create cm app-settings --from-env-file=settings.config`. Will NOT add file name as key into ConfigMap data. Will add quotes around non-string values.
4. Define settings in kubectl command: `kubectl create cm app-settings --from-literal=apiUrl=https://my-api --from-literal=otherKey=otherValue --from-literal=count=50`. Will add quotes around non-string values

## Run Node server and access ConfigMap Data

Demo of accessing ConfigMap data in Pod container through environment variables and direct settings.

1. Delete any ConfigMaps you added into k8s above via:
   `kubectl delete cm app-settings`

2. Build image: docker build -t node-configmap .
3. Create ConfigMap:

`kubectl create cm app-settings --from-env-file=settings.config` 4. Create Deployment:

`kubectl apply -f node-deployment.yml`

4. Port forward the Pod:

`kubectl port-forward <pod-name> 9000`

### Working on ConfigMap

Get a ConfigMap
`kubectl get cm [cm-name] -o yaml`
