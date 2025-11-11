# Imagen oficial de n8n
FROM n8nio/n8n:1.71.0

# Establecer directorio de trabajo
WORKDIR /home/node

# Variables de entorno
ENV N8N_PORT=10000
ENV PORT=10000
ENV NODE_ENV=production
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Crear carpeta de configuración y ajustar permisos
RUN mkdir -p /home/node/.n8n \
    && chown -R node:node /home/node/.n8n \
    && chmod 700 /home/node/.n8n

# Cambiar al usuario node (seguridad)
USER node

# Exponer el puerto que Render usará
EXPOSE 10000

# Comando de inicio — importante: usa n8n binario absoluto
CMD ["n8n"]
