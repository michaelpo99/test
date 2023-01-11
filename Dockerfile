FROM alpine:latest
ENV myworkdir /var/www/localhost/htdocs
ENV myenv michael is a good man
ARG whoami=no_one
WORKDIR ${myworkdir}
RUN apk --update add apache2 \
    &&rm -rf /var/cache/apk/*
RUN echo "<h3>fuck you ${whoami}<h3>" >> index.html
ENTRYPOINT ["httpd","-D","FOREGROUND"]
