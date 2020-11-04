FROM ubuntu:18.04
RUN apt-get update && apt-get install 
VOLUME /volume
COPY ./parse-trajectory-reproducer-log.sh .
