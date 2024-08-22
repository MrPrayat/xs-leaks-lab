FROM nginx:alpine

# Remove default NGINX config and default files (if any)
RUN rm -rf /usr/share/nginx/html/*

# Copy the static files to the NGINX web directory
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./xs-leaks/ /usr/share/nginx/html/xs-leaks/

# Ensure that NGINX starts properly
CMD ["nginx", "-g", "daemon off;"]
