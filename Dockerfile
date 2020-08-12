FROM mkenjis/mynode_alpine

COPY helloworld.js .
COPY package.json .

RUN mkdir test
WORKDIR test
COPY test/helloworld_test.js .
RUN npm test