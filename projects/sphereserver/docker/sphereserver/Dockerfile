# syntax=docker/dockerfile:1
FROM i386/ubuntu:18.04 AS builder

MAINTAINER Cavefish
ARG BRANCH

# Prepare for linux dependencies
RUN apt upgrade && \
    apt update && \
    apt install -y curl wget libmysqlclient-dev git gcc g++ make

WORKDIR /sphereserver

# Checkout the source code
RUN git clone --depth 1 --branch $BRANCH https://github.com/SphereServer/Source.git
WORKDIR /sphereserver/Source
RUN make NIGHTLY=1

FROM i386/ubuntu:18.04

# Prepare for linux dependencies
RUN apt upgrade && \
    apt update && \
    apt install -y libmysqlclient-dev

COPY --from=builder /sphereserver/Source/spheresvr /sphereserver/Source/src/*.ini /sphereserver/
COPY run.sh /sphereserver/

WORKDIR /sphereserver
RUN mv Sphere.ini sphere.ini && chmod +x run.sh
RUN ldd spheresvr # This checks that dependencies are ready

CMD /sphereserver/run.sh
EXPOSE 2593