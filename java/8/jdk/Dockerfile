FROM docker.repo.waimai.sankuai.info/leeln/ubuntu:14.04

ENV LANG C.UTF-8

# Install Oracle JDK
RUN \
	apt-get update && \
	apt-get install -y curl && \
	mkdir -p /usr/lib/jvm && \
	cd /usr/lib/jvm && \
    curl -L -O -k "http://repo.waimai.sankuai.info/artifactory/libs-release-local/jdk-8u71-linux-x64.gz" && \
    tar xvf jdk-8u71-linux-x64.gz -C /usr/lib/jvm && \
    rm -f jdk-8u71-linux-x64.gz && \
    ln -s /usr/lib/jvm/jdk1.* /usr/lib/jvm/jdk && \
    apt-get clean && \
	rm -rf /var/lib/apt/lists/* /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/*

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/jdk

# Add java on PATH variable
ENV PATH ${PATH}:${JAVA_HOME}/bin
