FROM alpine:3.8
WORKDIR /usr/bin
RUN  apk add --no-cache curl
RUN curl -L https://github.com/txthinking/brook/releases/download/v20200909/brook_linux_amd64 -o /usr/bin/brook
RUN chmod +x /usr/bin/brook
EXPOSE 9999
CMD ["brook ssserver -l :9999 -p password"]
