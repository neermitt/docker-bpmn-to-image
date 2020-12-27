FROM zenika/alpine-chrome:86-with-node-12

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD 1
ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/chromium-browser

USER root
RUN npm install -g bpmn-to-image
USER chrome

ENTRYPOINT ["bpmn-to-image"]
