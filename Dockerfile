FROM node:16
LABEL author="TankNee"
RUN apt-get update \
&& apt-get install -y curl \
&& apt-get install -y build-essential \
&& apt-get install -y ffmpeg
WORKDIR /usr/src/app
COPY . .
RUN npm install -g yarn \
&& yarn global add ts-node \
&& yarn \
&& yarn run compile:wx-voice

EXPOSE 7777
CMD ["echo", "'IM Aggregation.'"]