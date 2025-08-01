FROM n8nio/n8n:latest

# Variables de entorno
ENV NODE_ENV=production
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=10000
ENV N8N_PROTOCOL=https
ENV GENERIC_TIMEZONE=America/Bogota

# Puerto para Render
EXPOSE 10000

# Crear directorio de datos
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node

# Comando de inicio
CMD ["n8n"]
