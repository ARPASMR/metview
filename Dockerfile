# Start from scratch
FROM ubuntu:xenial

# Label this image
# LABEL name="registry.arpa.local/servizi/rasdaman"
LABEL name="local:metview"
LABEL version="1.0"
LABEL maintainer="Luca Paganotti <luca.paganotti@gmail.com>"
LABEL description="image for metview container with ubuntu:xenial"

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install metview && \
    rm -rf /var/lib/apt/lists/*

# Naive check runs checks once a minute to see if either of the processes exited.
# If you wanna be elegant use supervisord
#COPY entrypoint.sh /entrypoint.sh
#RUN chmod 755 /entrypoint.sh
# CMD ./entrypoint.sh

CMD ["/usr/bin/metview"]

