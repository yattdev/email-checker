# étape de build
FROM node:lts-alpine as build-stage

# Set work directory
ENV HOME=/home/alassane
ENV APP_HOME=/home/alassane/email_checker
WORKDIR $APP_HOME

# Add path
ENV PATH="$APP_HOME/.local/bin:${PATH}"

COPY package*.json $APP_HOME/
RUN npm install

# Copy email_checker, period dot (.) meant current dir
COPY . $APP_HOME

RUN npm run build
