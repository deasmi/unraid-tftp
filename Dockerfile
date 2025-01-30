FROM alpine:latest

RUN apk --no-cache add tftp-hpa
RUN apk --no-cache add bash
ENTRYPOINT ["in.tftpd"]
CMD ["-L", "--secure", "/var/tftpboot"]
VOLUME /var/tftpboot
EXPOSE 69/udp
