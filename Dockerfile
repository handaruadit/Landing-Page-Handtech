# Gunakan image Nginx ringan berbasis Alpine
FROM nginx:alpine

# Menyalin konfigurasi kustom nginx (jika ada, opsional)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Salin file statis ke direktori default Nginx
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Jalankan Nginx
CMD ["nginx", "-g", "daemon off;"]
