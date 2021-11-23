# Shell in a Box - Docker Unofficial

Dockerfile to build a [shellinabox](https://github.com/shellinabox/shellinabox) container image, which is build from debian bullseye-slim as base image and  configured without ssl for now will be achieved later.

### Usage
```
docker pull aravindha1234u/shellinabox
docker run -it --name=shellinabox -p 4200:4200 aravindha1234u/shellinabox
```

Environment variables:
1. PORT (default: 4200)
2. IP (default: 127.0.0.1)

docker-compose.yml
```
version: '3'
services:
  shellinabox:
     image: aravindha1234u/shellinabox
     container_name: shellinabox
     restart: always
#     environment:
#        - PORT=4200
#        - IP=127.0.0.1
     ports:
        - 4200:4200
```
```docker-compose up ```

Visit http://container-ip:4200 to view webUI.

### Screenshot
![screenshot](https://i.imgur.com/m9aWiUD.png)
