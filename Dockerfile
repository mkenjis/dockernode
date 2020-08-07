FROM mkenjis/mynode_img

COPY helloworld.js .
COPY package.json .

RUN mkdir test
WORKDIR test
COPY test/helloworld_test.js .
RUN npm test