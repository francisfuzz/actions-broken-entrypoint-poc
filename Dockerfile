FROM debian:9

ADD script.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/script.sh
