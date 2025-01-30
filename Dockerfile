FROM archlinux:latest

RUN mkdir /data
RUN chown nobody:nobody /data
ENTRYPOINT ["uftpd"]
CMD ["-n","-o","ftp=0,tftp=69,writeable","/data"]
VOLUME /data
EXPOSE 69/udp
