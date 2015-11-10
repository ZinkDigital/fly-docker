FROM debian:latest

RUN dpkg --add-architecture i386

RUN apt-get update

RUN yes | apt-get install libstdc++6:i386 libgcc1:i386 zlib1g:i386 libncurses5:i386

COPY fly .

EXPOSE 4396

RUN chmod +x ./fly

ENTRYPOINT ./fly



