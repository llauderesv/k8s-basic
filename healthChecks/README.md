# Health Checks in Kubernetes

Ensures your container in your Pod ins running healthy and ready to serve.

## Liveness Probe

Liveness probe is used to determine if the application is running properly. Containers that fail liveness checks will restart the container.


## Readiness Probe

Readiness Probe describe when a container is ready to serve user requests or traffic. Containers that fail readiness checks are removed from service load balancers.