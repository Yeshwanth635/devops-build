FROM node:latest
WORKDIR /app
copy manifest.json /app/
RUN npm install
copy . .
CMD ["npm","start"]
EXPOSE 80