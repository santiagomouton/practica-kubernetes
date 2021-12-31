# Configure kubectl for user
kubectl config set-cluster minikube --server=https://192.168.49.2:8443 --certificate-authority=/ca.crt
sleep 1
kubectl config set-credentials santiago --client-certificate=santiago.crt --client-key=santiago.key
sleep 1
kubectl config set-context santiago --cluster=minikube --user=santiago
sleep 1
kubectl config set-context santiago
kubectl config use-context santiago