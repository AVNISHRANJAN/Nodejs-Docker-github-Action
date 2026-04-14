# Copyright (c) 2026 Avnish Ranjan. All Rights Reserved.
# Unauthorized copying, modification, or distribution of this file,
# via any medium, is strictly prohibited without written permission.

FROM node:22-alpine

WORKDIR / app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "index"]
