FROM node:alpine

RUN apk add docker

# https://stackoverflow.com/a/45505787
RUN npm -g config set user root
RUN npm install -g truffle

RUN mkdir -p /app/logs

COPY . .

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]