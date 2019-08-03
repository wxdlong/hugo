from scratch

ADD https://github.com/gohugoio/hugo/releases/download/v0.56.3/hugo_0.56.3_Linux-64bit.tar.gz .

WORKDIR /code
CMD ["/hugo"]
