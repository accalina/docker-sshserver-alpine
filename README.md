# docker-sshserver-alpine
A simple tiny alpine based openssh server


# Installation
## with Docker-compose (Recommended)
1. Build and Run the image 
```
$ docker-compose up -d
```

## Installation with Docker (if docker-compose not available)
1. Build the image 
```
$ docker build -t alpine-ssh .
```

2. Run the image
```
$ docker run --name alpine-ssh -d -p 2222:22 alpine-ssh:latest
```

# Connect to your ssh-server
```
$ ssh accalina@localhost -p 2222
```
or
```
$ ssh <username on compose file>@<docker ip> -p <port on compose file>
```

# Decommissioning
If you want to change to new password
```
$ docker-compose down -v --rmi all
$ docker-compose up -d
```