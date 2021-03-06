#########################################
#
# Reverse Proxy Version 1.0.0
#
#########################################

FROM golang:1.5

# Creates the application folder
RUN mkdir -p /go/src/test
# Add the main script
ADD /src/main/main.go /go/src/test/main.go
# Add the entrypoint
ADD /entrypoint.sh /entrypoint.sh
# Give the correct permissions
RUN chmod a+x /entrypoint.sh
# Change the workdir
WORKDIR /go/src/test
# executes the entrypoint
ENTRYPOINT /entrypoint.sh
# Executes the main script
