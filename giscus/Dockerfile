FROM node:18

WORKDIR /app

COPY ./.env.example ./
RUN cat ./.env.example | grep 'NEXT_PUBLIC_' | sed 's/^\([^=]\+\)=.*/\1=REPLACE_ME__\1/g' > /etc/bash.bashrc

RUN apt update -y && apt upgrade -y && apt install -y gettext-base

COPY package.json yarn.lock client.ts ./
RUN yarn config set registry https://registry.npmjs.org
RUN yarn install

RUN npx next telemetry disable

COPY . .
RUN set -a && . /etc/bash.bashrc && yarn cscript && yarn cthemes && yarn next build

RUN chmod +x ./docker/entrypoint.sh

ENTRYPOINT [ "./docker/entrypoint.sh"]
CMD ["yarn", "start"]
