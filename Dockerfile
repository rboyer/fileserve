FROM alpine:3.13

ARG TARGETOS
ARG TARGETARCH

COPY fileserve.${TARGETOS}.${TARGETARCH} /bin/fileserve
VOLUME "/data"
EXPOSE 8080
ENTRYPOINT ["/bin/fileserve"]
