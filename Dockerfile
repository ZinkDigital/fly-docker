FROM busybox:latest

COPY fly .

EXPOSE 4396

CMD chmod 777 ./fly && ls -l  && ./fly

