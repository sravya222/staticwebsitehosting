# Use Nginx base image
FROM nginx:alpine

# Copy website files to Nginx default directory
COPY . /usr/share/nginx/html
