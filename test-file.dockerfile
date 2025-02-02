FROM nginx:alpine
LABEL maintainer="bogdan3x3bond@gmail.com"
RUN useradd -u 1775 Nginx
USER Nginx
#RUN cp /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.orig && \
#    sed -i 's/listen[[:space:]]*80;/listen 8080;/g' /etc/nginx/conf.d/default.conf
COPY ./default.conf /etc/nginx/conf.d/
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
