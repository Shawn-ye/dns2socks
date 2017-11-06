FROM debian:latest

RUN mkdir /home/dns2socks
COPY dns2socks.out /home/dns2socks
COPY start.sh /home/dns2socks
WORKDIR /home/dns2socks
RUN chmod +x dns2socks.out && chmod +x start.sh
# RUN apt-get update && apt-get install -y autossh
# CMD ["./start.sh"]