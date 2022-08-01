--Création d'un cluster kind
kind create cluster --name <config_name> --config <path_to_config_file>

-- Install chart agent datadog
helm install demo -f datadog/datadog-values.yml --set datadog.site='datadoghq.eu' --set datadog.apiKey='<api>'
datadog/datadog