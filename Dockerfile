# 1️⃣ Utiliser une image de base avec Node.js installé
FROM node:16

# 2️⃣ Définir le dossier de travail à l'intérieur du conteneur
WORKDIR /app

# 3️⃣ Copier les fichiers package.json et package-lock.json pour installer les dépendances
COPY package.json ./

# 4️⃣ Installer les dépendances de l’application
RUN npm install

# 5️⃣ Copier le reste du code dans le conteneur
COPY . .

# 6️⃣ Exposer le port 3000 pour que l’application soit accessible
EXPOSE 3000

# 7️⃣ Lancer l’application automatiquement quand le conteneur démarre
CMD ["npm", "start"]
