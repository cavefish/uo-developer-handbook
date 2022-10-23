# syntax=docker/dockerfile:1
FROM alpine:3.16.2

MAINTAINER Cavefish

# Prepare for linux dependencies
RUN apk update
RUN apk add build-base dumb-init curl tar libc6-compat

WORKDIR /sphereserver

# Download last build of sourceX
RUN curl -LJO https://ci.appveyor.com/api/buildjobs/em0qfu6h3fy6dx0g/artifacts/SphereSvrX-linux64-nightly.tar.gz

RUN apk add mariadb-dev # WIP: add failing libraries

# Uncompress
RUN tar -C . -xzvf SphereSvrX-linux64-nightly.tar.gz \
    && chmod +x build-64/bin64/SphereSvrX64_nightly \
    && rm *.tar.gz

RUN ldd build-64/bin64/SphereSvrX64_nightly # This checks that dependencies are ready

CMD build-64/bin64/SphereSvrX64_nightly

EXPOSE 2593