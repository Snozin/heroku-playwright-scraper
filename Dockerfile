FROM node:16-slim
FROM mcr.microsoft.com/playwright:v1.27.0-focal

WORKDIR /app
COPY . .
RUN yarn install --production
EXPOSE 3000
CMD ["yarn", "run", "start"]