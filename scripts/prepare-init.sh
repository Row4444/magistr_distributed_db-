#!/bin/bash

cat /scripts/master-init.sql | \
sed -e "s/\${POSTGRES_USER}/${POSTGRES_USER}/g" \
    -e "s/\${POSTGRES_PASSWORD}/${POSTGRES_PASSWORD}/g" \
    -e "s/\${POSTGRES_DB}/${POSTGRES_DB}/g" \
    -e "s/\${REPLICATION_USER}/${REPLICATION_USER}/g" \
    -e "s/\${REPLICATION_PASSWORD}/${REPLICATION_PASSWORD}/g" \
    > /docker-entrypoint-initdb.d/init.sql
