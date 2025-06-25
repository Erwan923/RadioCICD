#!/bin/bash
set -e

# Crée le réseau partagé s’il n'existe pas
if ! docker network inspect jintea_net >/dev/null 2>&1; then
  echo "🛠️  Création du réseau Docker 'jintea_net'"
  docker network create jintea_net
fi

# Lancer les services
for dir in gitea jenkins Ansible; do
  echo "🚀 Démarrage de $dir"
  docker compose -f "$dir/docker-compose.yml" up -d
done

echo "✅ Tous les services sont en ligne."
