# Stage 1: Build

FROM python:3.10-alpine

RUN apk update && apk --no-cache add git

WORKDIR /app
COPY . .

EXPOSE 7860
EXPOSE 1337
ENV LANG=ru

RUN chmod +x start_webui_linux.sh
ENTRYPOINT ["./start_webui_linux.sh"]
