FROM node
RUN yum update -y

RUN mkdir /app
WORKDIR /app

COPY package.json /app/
RUN npm install --only-production


COPY src /app/src

EXPOSE 3000

CMD ["npm", "start"]
