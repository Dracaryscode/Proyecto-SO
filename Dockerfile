# Usa una imagen de Node.js que incluya NPM (Node Package Manager)
FROM node:alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos necesarios al contenedor
COPY . .

# Instala un servidor HTTP simple
RUN npm install -g http-server

# Exponer el puerto 8080 para que el servidor HTTP esté disponible
EXPOSE 8080

# Comando para ejecutar el servidor HTTP y servir los archivos estáticos
CMD ["http-server", "-p", "8080"]