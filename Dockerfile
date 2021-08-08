# Define Base Image
FROM nginx:latest

# Define work Directory
WORKDIR /usr/share/nginx/html 

# Copy all from current directory
COPY . . 