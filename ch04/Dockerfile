#Build
FROM diamol/golang as builder

COPY main.go .
RUN go build -o /web/server
RUN chmod +x /web/server

#App
FROM diamol/base

ENV USER="cashewshideout"
EXPOSE 80
CMD ["/web/server"]

WORKDIR web
COPY --from=builder /web/server .

COPY index.html .
