FROM golang:1.8
WORKDIR /go/
RUN go get golang.org/x/net/http2
copy HTTP2/http2_server.go .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o http2_server . 

From debian:latest
RUN apt-get update && apt-get install -y \
  git \
  python-pip 

RUN python -m pip install -U pip 
RUN pip install grpcio grpcio-tools

WORKDIR /opt/

COPY --from=0 /go/http2_server .
copy . . 

EXPOSE 443
EXPOSE 9000
EXPOSE 8000

ENTRYPOINT ["/bin/bash","run.sh"]

