
FROM nginx:alpine

# Clean default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website content to Nginx's web directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

