FROM node:18-alpine

# Instalar N8n globalmente
RUN npm install -g n8n

# Variables de entorno
ENV NODE_ENV=production
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=10000
ENV N8N_PROTOCOL=https
ENV GENERIC_TIMEZONE=America/Bogota

# Puerto para Render
EXPOSE 10000

# Crear directorio de trabajo
WORKDIR /home/node
RUN mkdir -p .n8n

# Comando de inicio
CMD ["n8n"]
