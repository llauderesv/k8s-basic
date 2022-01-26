#/bin/sh

kubectl create configmap server1 \
  --from-file=index1.html

kubectl create configmap server2 \
  --from-file=index2.html