#docker Dropbox	

## Description:

This is a Dockerfile for "Dropbox" - (https://www.dropbox.com/).
Specifically for use within an unRAID environment.

## Build from docker file:

```
git clone https://github.com/johnnyzheng99/docker-dropbox.git 
cd docker-dropbox
docker build -t dropbox . 
```

## Volumes:

#### `/Dropbox`

### `/.dropbox`

Dropbox configuration folder, in this path, Dropbox will store it's configuration files.

## Docker run command:

```
docker run -d  -v /*your_dropbox_location*:/Dropbox \
              -v /*your dropbox meta files location*/:/.dropbox \
              -e TZ=Australia/Sydney \
              --name=Dropbox johnnyzheng/dropbox
```

## Get URL to link the container to your Dropbox account:
```
docker logs Dropbox
```
