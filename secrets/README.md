# Secret

a secret is an object that contains a small amount of sensitive data such as a password, a token, or a key (certificate).

- Kubernetes can store sensitive information (password, keys, certificates, etc.)

- Avoid storing secrets in container images, in files, or in deployment manifest.

- Mount secrets into a pods as files or as environment variables.

- Kubernetes only makes secrets available to Nodes that have a Pod requesting the secret.

- Secrets are stored in tmpfs on a Node (not on disk).

# Secrets Best Practices

- Enable encryption at rest for cluster data.

- Limit access to etcd (where Secrets are stored) to only admin users.

- Use SSL/TLS for etcd peer-to-peer communication

- Manifest (YAML/JSON) files only base64 encode the Secret.

- Pods can access Secrets so secure which users can create Pods. Role-based access control (RBAC) can be used.


# Creating a Secret

Create a secret and store securely in Kubernetes

`kubectl create secret generic my-secret --from-file-literal=pwd=my-password`

Create a secret from a file

`kubectl create secret generic my-secret 
  --from-file=ssh-privatekey=~/.ssh/id_rsa \ 
  --from-file=ssh-publickey=~/.ssh/id_rsa.pub`

Create a secret from a key pair

kubectl create secret tls tls-secret --cert=path/to/tls.cert \
  --key=path/to/tls.key

You can also declaratively create a secret using YAML files but you need to encode the value to base64
kubectl apply -f secret.yml

# Retrieving Secrets

`kubectl get secrets`

# Retrieving specific Secret

`kubectl get secret db-passwords -o yaml`

Note: Only administrator access should be allowed to view the secrets.

# Accessing Secret from a Pod

