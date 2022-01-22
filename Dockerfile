# étape de build
FROM node:lts-alpine as build-stage

# Set work directory
ENV HOME=/home/alassane
ENV APP_HOME=/home/alassane/email_checker
WORKDIR $APP_HOME

# Add path
ENV PATH="$APP_HOME/.local/bin:${PATH}"

COPY package*.json ./
RUN npm install

# Copy email_checker, period dot (.) meant current dir
COPY --chown=alassane:alassane . $APP_HOME

# Switch to root and change ownership of home and app_home
USER root
RUN chown -R alassane:alassane $HOME
RUN chown -R alassane:alassane $APP_HOME

RUN npm run build
