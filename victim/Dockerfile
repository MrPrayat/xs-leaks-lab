FROM nginx:alpine

# Copy the custom NGINX configuration to override the default
# UNCOMMENT LINE BELOW TO MITIGATE AGAINST XS-LEAKS
# COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Copy the static files to the NGINX web directory
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./xs-leaks/ /usr/share/nginx/html/xs-leaks/
