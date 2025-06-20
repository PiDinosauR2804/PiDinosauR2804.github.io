FROM node:18-alpine

# Cài bash và write-good
RUN apk add --no-cache bash && npm install -g write-good

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
