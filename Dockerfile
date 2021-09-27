FROM ubuntu:14.04
WORKDIR /bookbinder
COPY bookbinder.sh /
ENTRYPOINT ["/bookbinder.sh"]
