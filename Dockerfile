FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && apt-get install -y \
  texlive-extra-utils \
  texlive-latex-extra \
  texlive-latex-recommended \
  texlive texlive-lang-german
RUN apt-get -y install poppler-utils
RUN apt-get -y install qpdf
WORKDIR /bookbinder
COPY bookbinder.sh /
ENTRYPOINT ["/bookbinder.sh"]
