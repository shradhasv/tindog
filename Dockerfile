# Use an Ubuntu base image
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && \
    apt-get install -y nginx

# Copy the index.html file to the nginx default HTML directory
COPY . /var/www/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start the nginx service
CMD ["nginx", "-g", "daemon off;"]
