FROM node:18-alpine

# Cài đặt write-good
RUN npm install -g write-good

# Copy script và cho phép thực thi
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

