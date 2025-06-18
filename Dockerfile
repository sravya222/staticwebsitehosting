# Use nginx as base image
FROM nginx:alpine

# Copy website content into nginx's html folder
COPY index.html /usr/share/nginx/html/index.html
