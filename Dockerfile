from alpine as builder

ADD  https://github.com/gohugoio/hugo/releases/download/v0.56.3/hugo_0.56.3_Linux-64bit.tar.gz /
RUN tar -xvf hugo_0.56.3_Linux-64bit.tar.gz

from scratch

COPY --from=builder /hugo /

WORKDIR /code
CMD ["/hugo"]
