FROM alpine:latest
LABEL maintainer="accalina <https://github.com/accalina>"

ARG username=accalina
ARG password=change_this-your_password_here

RUN apk add --update --no-cache openssh
RUN adduser -h /home/accalina -s /bin/sh -D accalina
RUN echo -n $username:$password | chpasswd

# run this to enable password based authentication
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

COPY entrypoint.sh /
RUN chmod +x -v entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22