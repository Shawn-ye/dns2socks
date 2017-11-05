
#!/bin/bash -e
PLATFORM=raspberry

gcc -pthread -O2 -o dns2socks src/DNS2SOCKS.c
docker build -f dockerfile_${PLATFORM} -t dns2socks:${PLATFORM} .
docker run --net=host --restart=always -d dns2socks:${PLATFORM}
