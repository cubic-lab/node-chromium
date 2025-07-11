ARG NODE_VERSION=unknown

FROM node:${NODE_VERSION}-slim

ENV \
    # Configure default locale (important for chrome-headless-shell).
    LANG=en_US.UTF-8

RUN apt-get update \
    && apt-get install -y --no-install-recommends fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-khmeros \
    fonts-kacst fonts-freefont-ttf dbus dbus-x11 chromium

ENV DBUS_SESSION_BUS_ADDRESS autolaunch: