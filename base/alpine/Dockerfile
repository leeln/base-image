# VERSION 1.0
# AUTHOR:         Javy Liu <javy@leeln.com>
# DESCRIPTION:    leeln base images
# TO_BUILD:       docker build --rm -t leeln/base .
# SOURCE:         https://github.com/leeln/images
FROM alpine:3.4
MAINTAINER Javy Liu <javy@lelen.com>

ENV LANG=C.UTF-8 \
	TZ=Asia/Shanghai \
	GLIBC_VERSION=2.23-r3

RUN apk upgrade --update && \
    apk add bash curl ca-certificates wget libstdc++ && \
	for pkg in glibc-${GLIBC_VERSION} glibc-bin-${GLIBC_VERSION} glibc-i18n-${GLIBC_VERSION}; do curl -sSL https://github.com/andyshinn/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/${pkg}.apk -o /tmp/${pkg}.apk; done && \
    apk add --allow-untrusted /tmp/*.apk && \
    ( /usr/glibc-compat/bin/localedef --force --inputfile POSIX --charmap UTF-8 C.UTF-8 || true ) && \
    echo "export LANG=C.UTF-8" > /etc/profile.d/locale.sh && \
    /usr/glibc-compat/sbin/ldconfig /lib /usr/glibc-compat/lib && \
    rm -rf /tmp/* /var/tmp/* /var/cache/*
