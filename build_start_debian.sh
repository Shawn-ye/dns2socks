
#!/bin/bash -e
PLATFORM=debian

gcc -pthread -O2 -o dns2socks.out src/DNS2SOCKS.c
docker build -f ${PLATFORM}.dockerfile -t dns2socks:${PLATFORM} .
# docker run -v ${PWD}:/home/dns2socks --net=host debian:latest /bin/bash -c "cd /home/dns2socks && ./start.sh"
# docker run -v /root/.ssh/:/root/.ssh/ --net=host -d dns2socks:${PLATFORM} /bin/bash -c "cd /home/dns2socks && ./start.sh"
docker run --net=host -d dns2socks:${PLATFORM} /bin/bash -c "cd /home/dns2socks && ./start.sh"

