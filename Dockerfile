ARG tag
FROM prismagraphql/prisma:$tag
RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
COPY ./prerun_hook.sh /app/prerun_hook.sh
CMD /app/start.sh
