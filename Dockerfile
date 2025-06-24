# Use an official nginx image
FROM nginx:alpine

# Copy HTML/CSS files to Nginx default directory
COPY . /usr/share/nginx/html

EXPOSE 80
