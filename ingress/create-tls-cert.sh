#/bin/sh

kubectl create secret tls tls-secret \
  --cert=tls.cert \
  --key=tls.key