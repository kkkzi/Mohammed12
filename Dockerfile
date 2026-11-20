FROM teddysun/v2ray:latest

COPY config.json /etc/v2ray/config.json

CMD ["sh", "-c", "sed -i \"s/\\\"port\\\": 8080/\\\"port\\\": ${PORT:-8080}/\" /etc/v2ray/config.json && exec v2ray run -config /etc/v2ray/config.json"]
