# syntax=docker/dockerfile:1
FROM debian:stable-slim

MAINTAINER Cavefish

# Prepare for linux dependencies
RUN apt update && apt install -y curl default-libmysqlclient-dev

WORKDIR /sphereserver

# Download last build of sourceX
RUN curl -LJO https://ci.appveyor.com/api/buildjobs/em0qfu6h3fy6dx0g/artifacts/SphereSvrX-linux64-nightly.tar.gz

# Uncompress
RUN tar -C . -xzvf SphereSvrX-linux64-nightly.tar.gz \
    && chmod +x build-64/bin64/SphereSvrX64_nightly \
    && rm *.tar.gz

RUN ldd build-64/bin64/SphereSvrX64_nightly # This checks that dependencies are ready

CMD build-64/bin64/SphereSvrX64_nightly

EXPOSE 2593