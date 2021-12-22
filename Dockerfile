FROM alpine:3.14 as build-stage

RUN apk update && apk upgrade && \
    apk add --no-cache bash git

WORKDIR /app
RUN git clone https://github.com/afinasmu/stockbit-devops.git

FROM nginx:stable-alpine as deployment-stage

COPY --from=build-stage /app/stockbit-devops /var/www/

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
RUN cp ./usr/share/nginx/html/index.html /var/www
RUN rm -rf /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]