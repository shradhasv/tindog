# Use a lightweight base image
FROM nginx:alpine

WORKDIR /tindog

# Remove the default Nginx configuration
RUN rm -rf /etc/nginx/conf.d/*

# Copy the files to the Nginx document root
COPY . /usr/share/nginx/html

# Expose the default Nginx port (port 80)
EXPOSE 3000

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
