FROM leeln/base:alpine

# Install Oracle JRE 7u80
RUN cd /tmp && \
    curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "http://download.oracle.com/otn-pub/java/jdk/7u80-b15/jre-7u80-linux-x64.tar.gz" && \
    adduser -u 4205 -D java && \
	mkdir /srv/java && \
	ln -s /srv/java /var/lib/java && \
	chown -R java:java /var/lib/java && \
    tar xf jre-7u80-linux-x64.tar.gz -C /srv/java && \
    rm -f jre-7u80-linux-x64.tar.gz && \
    ln -s /srv/java/jre* /srv/java/jre && \
    ln -s /srv/java/jre /srv/java/jvm && \
    chown -R java:java /srv/java && \
    rm -rf /tmp/* /var/tmp/* /var/cache/*

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /srv/java/jre

# Add /srv/java and jdk on PATH variable
ENV PATH ${PATH}:${JAVA_HOME}/bin:/srv/java