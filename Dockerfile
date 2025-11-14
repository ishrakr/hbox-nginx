# Use the official Nginx image as the base
FROM nginx:alpine

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file
# This file (nginx.conf) needs to be in the same directory as the Dockerfile
COPY nginx.conf /etc/nginx/conf.d/nginx.conf

# Expose port 80 (standard HTTP port)
EXPOSE 80

# The default command (CMD) from the base image will run Nginx