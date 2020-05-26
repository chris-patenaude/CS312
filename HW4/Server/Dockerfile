# Dockerfile for CS312, originally created by:
#   Benjamin Brewster, Elijah Voigt
# Contributer: 
#   Chris Patenaude

FROM alpine:latest
LABEL maintainer="patenauc@oregonstate.edu"

# Install the NodeJS runtime
RUN apk -U add nodejs

# Copy the server JS file
COPY server.js /srv/server.js

# Copy the Dockerfile
COPY Dockerfile /srv/Dockerfile

# Expose the port 8080 for HTTP
EXPOSE 8080

# Run this command by default
CMD node /srv/server.js
