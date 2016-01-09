# git-docker

A Docker container for the git client and other system utilities provided by Alpine (e.g. BusyBox) and Curl.

## Examples

```
docker run -v /home/adam:/var/data channeladam/git-docker git clone https://github.com/channeladam/git-docker.git

docker run -v /home/adam:/var/data channeladam/git-docker ls
docker run -v /home/adam:/var/data channeladam/git-docker wget http://blah...
docker run -v /home/adam:/var/data channeladam/git-docker curl http://blah...

```
