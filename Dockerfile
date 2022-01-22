### 1 STAGE ###
# étape de build
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .


### 2 STAGE ###
# build stage
FROM develop-stage as build-stage
RUN npm run build

### 3 STAGE ###
# production stage
FROM node:alpine as production-stage

# add new user
RUN useradd -ms /bin/bash alassane
# add user alassane to (root group).
RUN usermod -aG root alassane

# Set work directory
ENV HOME=/home/alassane
ENV APP_HOME=/home/alassane/email_checker
WORKDIR $APP_HOME

# Add path
ENV PATH="$APP_HOME/.local/bin:${PATH}"

COPY --from=build-stage /app/dist $APP_HOME
RUN rm -rf /app

# Copy email_checker, period dot (.) meant current dir
COPY --chown=alassane:alassane . $APP_HOME

# Switch to root and change ownership of home and app_home
USER root
RUN chown -R alassane:alassane $HOME
RUN chown -R alassane:alassane $APP_HOME

# Change user to alassane
USER alassane
