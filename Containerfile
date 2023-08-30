FROM docker.io/centos7py3node/base
RUN mkdir -p /app
WORKDIR /app
COPY convert.js /app
#RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
#RUN export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#RUN nvm install 15.0.1
RUN npm init -y
RUN npm install
RUN npm install puppeteer


