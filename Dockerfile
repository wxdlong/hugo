from alpine as builder

ADD  https://github.com/gohugoio/hugo/releases/download/v0.56.3/hugo_0.56.3_Linux-64bit.tar.gz /hugo.tar.gz
RUN tar -xvf hugo.tar.gz -C / && \
    ls -lth /

from scratch

COPY --from=builder /hugo /hugo

WORKDIR /code
CMD ["/hugo"]
