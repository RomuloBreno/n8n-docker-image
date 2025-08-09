# Base: imagem oficial do n8n
FROM n8nio/n8n:latest

# Troca para root para poder instalar pacotes
USER root

# Instala FFmpeg
RUN apt-get update && apt-get install -y ffmpeg && apt-get clean && rm -rf /var/lib/apt/lists/*

# Volta para o usuário padrão do n8n
USER node

# Expõe a porta padrão do n8n
EXPOSE 5678 

# Comando padrão de inicialização do n8n
CMD ["n8n"]
