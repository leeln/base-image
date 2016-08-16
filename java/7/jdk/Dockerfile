FROM leeln/base:alpine

# Install Oracle JDK 7u80
RUN cd /tmp && \
    curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "http://download.oracle.com/otn-pub/java/jdk/7u80-b15/jdk-7u80-linux-x64.tar.gz" && \
    adduser -u 4205 -D java && \
	mkdir /srv/java && \
	ln -s /srv/java /var/lib/java && \
	chown -R java:java /var/lib/java && \
    tar xf jdk-7u80-linux-x64.tar.gz -C /srv/java && \
    rm -f jdk-7u80-linux-x64.tar.gz && \
    ln -s /srv/java/jdk* /srv/java/jdk && \
    ln -s /srv/java/jdk /srv/java/jvm && \
    chown -R java:java /srv/java && \
    rm -rf /srv/java/jdk/*src.zip \
           /srv/java/jdk/lib/missioncontrol \
           /srv/java/jdk/lib/visualvm \
           /srv/java/jdk/lib/*javafx* \
           /srv/java/jdk/jre/plugin \
           /srv/java/jdk/jre/bin/javaws \
           /srv/java/jdk/jre/bin/jjs \
           /srv/java/jdk/jre/bin/keytool \
           /srv/java/jdk/jre/bin/orbd \
           /srv/java/jdk/jre/bin/pack200 \
           /srv/java/jdk/jre/bin/policytool \
           /srv/java/jdk/jre/bin/rmid \
           /srv/java/jdk/jre/bin/rmiregistry \
           /srv/java/jdk/jre/bin/servertool \
           /srv/java/jdk/jre/bin/tnameserv \
           /srv/java/jdk/jre/bin/unpack200 \
           /srv/java/jdk/jre/lib/javaws.jar \
           /srv/java/jdk/jre/lib/deploy* \
           /srv/java/jdk/jre/lib/desktop \
           /srv/java/jdk/jre/lib/*javafx* \
           /srv/java/jdk/jre/lib/*jfx* \
           /srv/java/jdk/jre/lib/amd64/libdecora_sse.so \
           /srv/java/jdk/jre/lib/amd64/libprism_*.so \
           /srv/java/jdk/jre/lib/amd64/libfxplugins.so \
           /srv/java/jdk/jre/lib/amd64/libglass.so \
           /srv/java/jdk/jre/lib/amd64/libgstreamer-lite.so \
           /srv/java/jdk/jre/lib/amd64/libjavafx*.so \
           /srv/java/jdk/jre/lib/amd64/libjfx*.so \
           /srv/java/jdk/jre/lib/ext/jfxrt.jar \
           /srv/java/jdk/jre/lib/ext/nashorn.jar \
           /srv/java/jdk/jre/lib/oblique-fonts \
           /srv/java/jdk/jre/lib/plugin.jar \
           /tmp/* /var/tmp/* /var/cache/*

# Define commonly used JAVA_HOME variable, Add /srv/java and jdk on PATH variable
ENV JAVA_HOME /srv/java/jdk \
	PATH ${PATH}:${JAVA_HOME}/bin:/srv/java