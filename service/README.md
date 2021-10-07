# k8s services

A service is a component just like a Pod that sits in your Pods so that it can communicate to external users. It's a way to establish connectivity to other services inside your cluster. Because by default you can't use your pods to communicate to other pods because pods are ephemeral. Services can have a stable ip address that sit's between in your pods. In simple terms in enables loose coupling to your pods to other pods by accessing a service. The Service that sit's on top of your Pod has a random load balancing capability it means it randomly distribute the load in your pod.


## Service Types

There three service types in Kubernetes that you can use to expose your pods to external users. They behave differently and it's important to understand the three of them

### NodePort

NodePort creates port inside your pod so that your pod will become accessible to your outside user. NodePort can only have a valid range port that can be used. But it's advisable to let kubernetes assign a NodePort. By using NodePort you allow external traffic to access your service by having a external ip address and port defined on it provided in NodePort.


### ClusterIP

Creates a virtual ip inside your cluster to enable the communication inside only in your cluster. (Note you can't access your service externally that's why it's called ClusterIP and can only be access in your cluster).


### Load Balancer

Creates a Load Balancer by a Cloud Provider so that your service in kubernetes will become accessible to external traffic. Each cloud provider has their own Load Balancer. Whenever we create a LoadBalancer service it will automatically creates a NodePort and ClusterIP in your service. 

## Best Practices

- NodePort Service cannot be used in production if you want to exposed your service to external users. It can only be used for development or for testing to debug your service.
- Configure Ingress or LoadBalancer to access your NodePort inside Service.


Ingress -> NodePort -> ClusterIP -> Service

LoadBalancer -> NodePort -> ClusterIP -> Service