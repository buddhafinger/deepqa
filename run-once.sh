eval $(minikube docker-env)
#redis
kubectl create -f redis-deployment.yml
kubectl create -f redis-service.yml

#deepqa storage
kubectl create -f ./deepqa-volumes.yml
kubectl create -f ./deepqa-volumes-claim.yml

#deepqa
kubectl create -f ./deepqa-deployment.yml
kubectl create -f ./deepqa-service.yml
