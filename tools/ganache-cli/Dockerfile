FROM trufflesuite/ganache-cli

RUN mkdir -p /app/logs
WORKDIR /app

COPY . .

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]