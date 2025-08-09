# Base: imagem oficial do n8n
FROM n8nio/n8n:latest

# Troca para root para instalar pacotes
USER root

# Instalar FFmpeg no Alpine
RUN apk add --no-cache ffmpeg

# Volta para o usuário padrão do n8n
USER node

# Porta padrão do n8n
EXPOSE 5678

# Comando de inicialização
CMD ["n8n"]
