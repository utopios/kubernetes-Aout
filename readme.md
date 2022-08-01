--commande kind

--Création d'un cluster kind
kind create cluster --name <config_name> --config <path_to_config_file>

--Pour charger des images dans le cluster kind, après le build

kind load docker-image <image_local:tag> --name <nom_cluster>

-- Install chart agent datadog
helm install demo -f datadog/datadog-values.yml --set datadog.site='datadoghq.eu' --set datadog.apiKey='<api>'
datadog/datadog