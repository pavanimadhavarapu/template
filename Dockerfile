# Use small nginx base image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into nginx web root
COPY . /usr/share/nginx/html/

# Expose port 80 inside container
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

