FROM lambci/lambda:build-nodejs12.x


WORKDIR /src/

COPY package.json yarn.lock /src/

RUN npm ci --silent

COPY  . .

CMD npm start