# syntax=docker/dockerfile:1
FROM amd64/debian:10.13

MAINTAINER Cavefish

# Prepare for linux dependencies
RUN apt update && \
    apt install -y curl wget

WORKDIR /sphereserver

# Download last build of sourceX
RUN curl -LJO https://ci.appveyor.com/api/buildjobs/em0qfu6h3fy6dx0g/artifacts/SphereSvrX-linux64-nightly.tar.gz

# Uncompress
RUN tar -C . -xzvf SphereSvrX-linux64-nightly.tar.gz \
    && chmod +x build-64/bin64/SphereSvrX64_nightly \
    && rm *.tar.gz

RUN wget https://repo.mysql.com/apt/debian/pool/mysql-5.7/m/mysql-community/libmysqlclient20_5.7.40-1debian10_amd64.deb && \
    dpkg --force-all -i libmysqlclient20_5.7.40-1debian10_amd64.deb && \
    apt-get -f -y install

RUN ldconfig

RUN ldd build-64/bin64/SphereSvrX64_nightly # This checks that dependencies are ready

CMD build-64/bin64/SphereSvrX64_nightly

EXPOSE 2593