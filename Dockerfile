FROM alpine:3.8
WORKDIR /usr/bin
RUN  apk add --no-cache git bash curl
RUN curl -L https://github.com/txthinking/brook/releases/download/v20200909/brook_linux_amd64 -o /usr/bin/brook
RUN chmod +x /usr/bin/brook
RUN touch start.sh
RUN echo "nohup brook server -l :9999 -p passwd'">>/start.sh
RUN chmod 777 start.sh
EXPOSE 9999
ENTRYPOINT ["/bin/bash","start.sh"]
