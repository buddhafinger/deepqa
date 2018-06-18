#deepqa
kubectl delete -f ./deepqa-service.yml
kubectl delete -f ./deepqa-deployment.yml
kubectl delete -f ./deepqa-volumes-claim.yml
kubectl delete -f ./deepqa-volumes.yml

#redis
kubectl delete -f redis-service.yml
kubectl delete -f redis-deployment.yml
