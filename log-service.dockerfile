FROM alpine:latest
RUN mkdir /app
RUN mkdir /templates

COPY ../log-service/log-service.bin /app
COPY ../log-service/templates/. /templates

# Run the server executable
CMD [ "/app/log-service.bin" ]