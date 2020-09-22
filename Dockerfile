FROM alpine:3.8
WORKDIR /usr/bin
RUN  apk add --no-cache bash curl
RUN curl -L https://github.com/txthinking/brook/releases/download/v20200909/brook_linux_amd64 -o /usr/bin/brook
RUN chmod +x /usr/bin/brook
RUN touch ./crond.sh
RUN echo "brook ssserver -l :9999 -p password'">>/start.sh
RUN chmod 777 ./crond.sh
EXPOSE 9999
ENTRYPOINT ["/bin/bash","./start.sh"]
