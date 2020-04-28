FROM golang:1.13.10-alpine3.11
RUN apk add bash
RUN GO111MODULE=on go get golang.org/x/tools/gopls@master golang.org/x/tools@master
RUN mkdir -p /build
WORKDIR /build
COPY . ./
ENTRYPOINT ["./run.sh"]