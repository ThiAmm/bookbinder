FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && apt-get install -y \
  texlive-extra-utils \
  texlive-latex-extra \
  texlive-latex-recommended \
  texlive texlive-lang-german
RUN apt-get -y install poppler-utils
RUN apt-get -y install qpdf
RUN apt-get -y install pandoc
WORKDIR /bookbinder
COPY bookbinder.sh /
COPY convertTxtToPdf.sh /
ENTRYPOINT ["/bookbinder.sh"]
