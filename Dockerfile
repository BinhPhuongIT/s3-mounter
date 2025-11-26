FROM alpine:3.12

RUN apk add --no-cache fuse libc6-compat ca-certificates wget

WORKDIR /app

# Download pre-built goofys binary
RUN wget -q https://github.com/kahing/goofys/releases/download/v0.24.0/goofys && \
    chmod +x goofys

ENTRYPOINT ["/app/goofys"]
CMD []