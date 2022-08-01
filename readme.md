--commande kind

--Création d'un cluster kind
kind create cluster --name <config_name> --config <path_to_config_file>

--Pour charger des images dans le cluster kind, après le build

kind load docker-image <image_local:tag> --name <nom_cluster>

-- Install chart agent datadog
helm install demo -f datadog/datadog-values.yml --set datadog.site='datadoghq.eu' --set datadog.apiKey='<api>'
datadog/datadog

--Exemple de commande pour connexion par certificat.
openssl genrsa -out example.key 2048
openssl req -out example.csr -newkey rsa:2048 -new -nodes -keyout privateKey.key

--Création d'un sefl-signed certificat
openssl x509 -req -in example.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out example.crt -days 30

--Ajouter credentials à kubectl
kubectl config set-credentials example --client-key=example.key --client-certificate=example.crt


--Exemple de creation d'HA cluster avec kubeadm
https://kubernetes.io/fr/docs/setup/production-environment/tools/kubeadm/high-availability/
-- kubeadm et pki kubernetes
https://kubernetes.io/fr/docs/setup/production-environment/tools/kubeadm/setup-ha-etcd-with-kubeadm/

--Utilisation de kubeKey pour création d'un cluster HA
https://github.com/kubesphere/kubekey