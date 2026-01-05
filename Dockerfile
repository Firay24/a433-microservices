# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory di dalam container
WORKDIR /app

# Menyalin seluruh source code ke working directory
COPY . .

# Menjalankan aplikasi dalam mode production
# dan menggunakan item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstall dependency production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port yang digunakan aplikasi
EXPOSE 8080

# Menjalankan aplikasi saat container dijalankan
CMD ["npm", "start"]
