# Use an official Nginx runtime as a parent image
FROM nginx:latest

# Set the working directory to the Nginx document root
WORKDIR /usr/share/nginx/html

# Copy the current directory contents into the container at /usr/share/nginx/html
COPY . .

# Expose port 8081 to the outside world
EXPOSE 8081

# CMD to start Nginx and keep the process running
CMD ["nginx", "-g", "daemon off;"]
