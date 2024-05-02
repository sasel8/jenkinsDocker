FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY index.html .
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 4444:80
CMD ["nginx", "-g", "daemon off;"]
