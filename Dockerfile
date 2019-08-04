from alpine as builder

ADD  https://github.com/gohugoio/hugo/releases/download/v0.56.3/hugo_extended_0.56.3_Linux-64bit.tar.gz /
RUN tar -xvf hugo_0.56.3_Linux-64bit.tar.gz -C / && \
    ls -lth /

from scratch

COPY --from=builder /hugo /hugo

WORKDIR /code
CMD ["/hugo"]
