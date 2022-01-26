# k8s Ingress demo

Note:

Make sure you run this kubectl command to install nginx-ingress-controller in your local Kubernetes cluster (docker-desktop).

```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.1/deploy/static/provider/cloud/deploy.yaml
```


## Ingress

Ingress is not a type of service. Instead, it sits in front of multiple services and act as a smart router or entrypoint into your cluster.

By using this Ingress, you can secure your service by having not exposing them to your external user and can only be access in your cluster. So the Ingress controller are the ones who's responsible to redirect to your service.

### default-backend

Ingress has a rule that if there's no match path in the rules you can have a default backend so that it will default direct to your service that you wanted to expose by default.


## Benefits

### Fan-out request

Imagine you have a multiple back-end service in your company and you need to expose them to your users. By using Ingress you can have define one single host / url and provide path that will be forwarded in your backend service. Maybe you could also use multiple host / domain with a single path because some companies much prefer subdomains so that it makes sense to them and clear to external users that their service is much more readable.

### Configuring TLS Certificate 

By having an Ingress that sits in front of your Kubernetes cluster, you can easily manage and configure your TLS certificate in your service because it serves as façade to your client and your service doesn't need to be restarted and can easily terminate the SSL certificate if the certificate is already expired.


### Cost efficient

Exposing your service by having Load Balancer is not cost efficient. You need to pay for every IP address that you get and this will also depend on the cloud service provider that you've used. So by setting up and ingress you can ditch your load balancer in your service and 