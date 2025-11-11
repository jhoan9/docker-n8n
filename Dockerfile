FROM n8nio/n8n:1.71.0

WORKDIR /data

ENV N8N_PORT=10000
ENV PORT=10000
ENV NODE_ENV=production

EXPOSE 10000

RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node
CMD ["n8n", "start"]
