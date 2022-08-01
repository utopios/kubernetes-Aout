

#Création du namespace
kubectl create -f ressources/k8s/tp-namespace.yml 

#Création des services
kubectl create -f ressources/k8s/service-cluster-ip-redis.yml
kubectl create -f ressources/k8s/service-cluster-ip-db.yml
kubectl create -f ressources/k8s/service-node-port-vote.yml
kubectl create -f ressources/k8s/service-node-port-result.yml 

#création du persistent volume et du persistent volume claim

kubectl create -f ressources/k8s/persistance-volume.yml
kubectl create -f ressources/k8s/persistance-volume-claim.yml

#création des depolyments
kubectl create -f ressources/k8s/deployment-postgres.yml 
kubectl create -f ressources/k8s/deployment-redis.yml 
kubectl create -f ressources/k8s/deployment-worker.yml 
kubectl create -f ressources/k8s/deployment-vote.yml 
kubectl create -f ressources/k8s/deployment-result.yml 
