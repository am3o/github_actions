FROM golang:1.17.7 AS Build

RUN mkdir /build
ADD . /build
WORKDIR /build
RUN CGO_ENABLED=0 go build -o main -mod=vendor .

FROM scratch

COPY --from=Build /build/main /app/

CMD ["/app/main"]