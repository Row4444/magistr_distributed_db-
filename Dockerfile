FROM postgres:13

RUN apt-get update && apt-get install -y netcat-openbsd

COPY scripts/wait-for-it.sh /scripts/wait-for-it.sh
COPY scripts/entrypoint.sh /scripts/entrypoint.sh

RUN chmod +x /scripts/wait-for-it.sh
RUN chmod +x /scripts/entrypoint.sh

ENTRYPOINT ["/scripts/entrypoint.sh"]
