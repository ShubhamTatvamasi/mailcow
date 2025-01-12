# Set the desired DNS values as a JSON array
DNS_VALUES='["8.8.8.8", "8.8.4.4"]'

# Use yq to add DNS to all services
yq -y -i ".services |= with_entries(.value.dns = $DNS_VALUES)" docker-compose.yml
