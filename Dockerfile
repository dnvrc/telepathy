FROM golang:latest

ADD . /go/src/github.com/dnvrc/telepathy

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN go install github.com/dnvrc/telepathy

ENTRYPOINT /go/bin/telepathy
