FROM node:latest

RUN sed -i.bak -e "s%http://deb.debian.org/debian stretch main%http://ftp.jp.debian.org/debian/ buster main contrib non-free%g" \
  /etc/apt/sources.list \
  && yarn global add @vue/cli

CMD ["/bin/bash"]