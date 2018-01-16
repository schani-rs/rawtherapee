FROM debian:9.3
RUN echo 'deb http://download.opensuse.org/repositories/home:/rawtherapee/Debian_9.0/ /' >> /etc/apt/sources.list.d/rawtherapee.list
RUN apt-get update
RUN apt-get install -y --allow-unauthenticated rawtherapee
ENTRYPOINT [ "rawtherapee-cli" ]
