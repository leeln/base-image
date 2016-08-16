FROM leeln/base:alpine

# Install Oracle JRE 8u74
RUN cd /tmp && \
    curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "http://download.oracle.com/otn-pub/java/jdk/8u74-b02/jre-8u74-linux-x64.tar.gz" && \
    groupadd java -g 4205 && \
	useradd -u 4205 --home-dir /srv/java --create-home --system --no-user-group java && \
	usermod -g java java && \
	ln -s /srv/java /var/lib/java && \
	chown -R java:java /var/lib/java && \
    tar xf jre-8u74-linux-x64.tar.gz -C /srv/java && \
    rm -f jre-8u74-linux-x64.tar.gz && \
    ln -s /srv/java/jre* /srv/java/jre && \
    ln -s /srv/java/jre /srv/java/jvm && \
    chown -R java:java /srv/java && \
    rm -rf /tmp/* /var/tmp/* /var/cache/*

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /srv/java/jre

# Add /srv/java and jdk on PATH variable
ENV PATH ${PATH}:${JAVA_HOME}/bin:/srv/java