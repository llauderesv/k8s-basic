# k8s Ingress demo

## Ingress

Ingress is not a type of service. Instead, it sits in front of multiple services and act as a smart router or entrypoint into your cluster.

By using this Ingress, you can secure your service by having not exposing them to your external user and can only be access in your cluster. So the Ingress controller are the ones who's responsible to redirect to your service.