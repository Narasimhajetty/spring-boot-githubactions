# pull the official base image (Background o.s for container)
 FROM node:17-alpine3.14
# set working direction (directory for my project)
 WORKDIR /src
# set environment path
 ENV PATH="./node_modules/.bin:$PATH"
# Copy everything from local machine to our server, second dot refers to the directory on the container.
 COPY . .
# install npm dependencies
 RUN maven install
# lets build the application
 RUN maven build
 
 # # start an application (starting our react server)
 CMD ["maven", "run", "start"]
