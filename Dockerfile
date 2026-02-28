FROM nginx:alpine

# Remove default nginx static files
# RUN rm -rf /usr/share/nginx/html/*

COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your dist files
COPY dist/ /usr/share/nginx/html/

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
