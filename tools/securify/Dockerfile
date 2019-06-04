FROM chainsecurity/securify

RUN mkdir -p /app/logs
WORKDIR /app

COPY . .

RUN chmod +x /app/entrypoint.sh
RUN chmod +x /sec/build/libs/securify.jar

ENTRYPOINT ["./entrypoint.sh"]