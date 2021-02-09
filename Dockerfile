FROM getmeili/meilisearch as local

ENTRYPOINT ["tini", "--"]
CMD     ./meilisearch

FROM local

COPY ./data.ms /data.ms

ENV     MEILI_HTTP_ADDR 0.0.0.0:7700
EXPOSE  7700/tcp

ENTRYPOINT ["tini", "--"]
CMD     ./meilisearch
