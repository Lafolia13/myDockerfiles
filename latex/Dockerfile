FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

COPY .latexmkrc /
COPY jlisting.sty /usr/share/texlive/texmf-dist/tex/latex/listing/

# jaist
RUN sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list

RUN apt update \
  && apt install -y --no-install-recommends \
    texlive-lang-japanese \
    texlive-plain-generic texlive-latex-base texlive-latex-extra \
    latexmk \
  && rm -rf /var/lib/apt/lists/* \
  && mktexlsr

CMD ["/bin/bash"]
