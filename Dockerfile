FROM  node:16.15.0
RUN  mkdir  -p  /opt/app
WORKDIR  /opt/app
RUN  npm  install  nodemon  -g
RUN  npm  install  typescript  -g
RUN  npm  install  ts-node  -g
RUN  npm  install  jest  -g
COPY  .  .
RUN  npm  install
EXPOSE  8000
RUN  npm  run  build
RUN npm run start