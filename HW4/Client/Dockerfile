# Dockerfile for CS312, originally created by:
#   Benjamin Brewster, Elijah Voigt
# Contributer: 
#   Chris Patenaude

FROM alpine:latest
LABEL maintainer="patenauc@oregonstate.edu"

RUN apk -U add curl

COPY client.sh /client/client.sh

# Run this command by default
CMD ./client/client.sh
