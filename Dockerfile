# Use a lightweight web server image
FROM nginx:alpine

# Copy the content of the 'food-menu' directory to the default Nginx web server location
COPY . /usr/share/nginx/html

# Expose port 80 to allow external access
EXPOSE 80

# Command to run Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
