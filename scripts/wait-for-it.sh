#!/bin/bash
# Скрипт для очікування доступності хосту/порту

set -e

host="$1"
port="$2"
shift 2
cmd="$@"

echo "Чекаємо, поки $host:$port стане доступним..."
while ! nc -z $host $port; do
  sleep 1
done

echo "$host:$port доступний."
exec $cmd
