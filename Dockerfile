FROM n8nio/n8n:latest

# Cambiar al usuario root temporalmente
USER root

# Configuración para Render
ENV NODE_ENV=production
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=10000
ENV N8N_PROTOCOL=https
ENV GENERIC_TIMEZONE=America/Bogota

# El puerto que Render espera
EXPOSE 10000

# Crear directorio para datos y dar permisos
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Volver al usuario node
USER node

# Comando para iniciar N8n
CMD ["n8n", "start"]
