FROM centos:7

RUN groupadd -r kerbproxy -g 1000 && useradd -u 1000 -r -g kerbproxy -m -d /app -s /sbin/nologin -c "kerbproxy" kerbproxy && \
    chmod 755 /app

USER kerbproxy

COPY run-cu /
CMD ["/run-cu"]