# Learning Docker

### Dockerfile
```
FROM node:latest # Docker baseimage

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . . # Copies the project content

ENV PORT=8080 # Sets a env var

EXPOSE 8080

CMD ["npm", "start"]
```

### Docker build
It creates the docker image so it is possible to run a container from that image (Containers are created from docker images

```docker build -t "name-for-the-docker-image" .```

It will generate a "docker image id"...

### Docker run
It will run a container from a docker image.

```docker run -p port-to-run-on-ur-machine:process-port-from-docker "docker image name/docker image id"

It will use a terminal and that terminal will not be usable, but u can use the -d flag on docker run so it keeps running the container "on background" and do not keep that terminal unusable.
