#!/bin/bash

set -e

# Чекаємо, доки postgres-master буде доступний
/scripts/wait-for-it.sh postgres-master 5432 --timeout=30 --strict -- echo "Master is up"

# Виконуємо резервне копіювання бази даних майстра
pg_basebackup -h postgres-master -D /var/lib/postgresql/data -U repluser -vP --wal-method=stream

# Створюємо файл конфігурації реплікації
cat > /var/lib/postgresql/data/recovery.conf <<EOF
standby_mode = 'on'
primary_conninfo = 'host=postgres-master port=5432 user=repluser password=replpassword'
trigger_file = '/tmp/postgresql.trigger.5432'
EOF

# Запускаємо PostgreSQL для репліки
exec postgres -D /var/lib/postgresql/data -c config_file=/etc/postgresql/postgresql.conf
