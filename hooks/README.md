# Container Lifecycle Hooks

## Post-Start Hooks
A post-start hooks is executed immediately after the container's main process is started. You use it to perform additional operations when the application starts.

Post-Start hooks allow you to run additional commands without modifying or touching the app. Because typically if you worked with Kubernetes deployment you don't want to modify the existing app and make changes on it.

## Pre-Stop Hooks

A pre-stop hooks is executed immediately before a container is terminated. When a container needs to be terminated, Kubelet will run the pre-stop hook.

This can also be used to perform arbitrary operations before shutting down without having to implement those operations in the application itself (this is useful when you’re running a third-party app, whose source code you don’t have access to and/or can’t modify).

Note: Be careful by using forcing termination of the pod 

``
$ kubectl delete po mypod --grace-period=0 --force
``