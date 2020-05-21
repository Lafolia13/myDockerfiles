FROM ubuntu:latest

COPY inputs/ /tmp

# trast jaist !!!
RUN sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list \
  && apt update \
  && apt install -y curl perl \
  && mkdir /tmp/install-tl-unx \
  # jaist のリポジトリを使用
  && repo="http://ftp.jaist.ac.jp/pub/CTAN/systems/texlive/tlnet" \
  && curl -L ${repo}/install-tl-unx.tar.gz \
  | tar -xz -C /tmp/install-tl-unx/ --strip-components=1 \
  # texlive.profile でインストールする collection を指定。ソースファイル等を残さない
  && /tmp/install-tl-unx/install-tl --profile=/tmp/texlive.profile --repository=${repo} \
  # latexmk だけ入ってないので
  && /usr/local/texlive/????/bin/*/tlmgr install latexmk \
  && /usr/local/texlive/????/bin/*/tlmgr path add \
  # styles に含まれているパッケージを使えるようにする
  && chmod +x /tmp/move_sty.sh && /tmp/move_sty.sh \
  && mktexlsr \
  && mv /tmp/.latexmkrc / \
  && rm -rf /tmp/* \
  && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
