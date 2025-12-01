#!/bin/bash
set -e

# Поднимаем compose
docker compose -f compose.yaml up -d --build

echo "Ждём 5 секунд пока сервисы стартуют..."

sleep 5

# Проверка доступности web
echo "Запрос на http://127.0.0.1:8090"
curl -s -L http://127.0.0.1:8090 || true

# Список контейнеров
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"