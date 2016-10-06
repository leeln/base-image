FROM leeln/alpine:3.4

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
    rm -rf /srv/java/jre/plugin \
           /srv/java/jre/bin/javaws \
           /srv/java/jre/bin/jjs \
           /srv/java/jre/bin/keytool \
           /srv/java/jre/bin/orbd \
           /srv/java/jre/bin/pack200 \
           /srv/java/jre/bin/policytool \
           /srv/java/jre/bin/rmid \
           /srv/java/jre/bin/rmiregistry \
           /srv/java/jre/bin/servertool \
           /srv/java/jre/bin/tnameserv \
           /srv/java/jre/bin/unpack200 \
           /srv/java/jre/lib/javaws.jar \
           /srv/java/jre/lib/deploy* \
           /srv/java/jre/lib/desktop \
           /srv/java/jre/lib/*javafx* \
           /srv/java/jre/lib/*jfx* \
           /srv/java/jre/lib/amd64/libdecora_sse.so \
           /srv/java/jre/lib/amd64/libprism_*.so \
           /srv/java/jre/lib/amd64/libfxplugins.so \
           /srv/java/jre/lib/amd64/libglass.so \
           /srv/java/jre/lib/amd64/libgstreamer-lite.so \
           /srv/java/jre/lib/amd64/libjavafx*.so \
           /srv/java/jre/lib/amd64/libjfx*.so \
           /srv/java/jre/lib/ext/jfxrt.jar \
           /srv/java/jre/lib/ext/nashorn.jar \
           /srv/java/jre/lib/oblique-fonts \
           /srv/java/jre/lib/plugin.jar \
           /tmp/* /var/tmp/* /var/cache/*

# Define commonly used JAVA_HOME variable,Add /srv/java and jdk on PATH variable
ENV JAVA_HOME=/srv/java/jre \
	PATH=${PATH}:${JAVA_HOME}/bin:/srv/java/jre/bin