ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache python3 python3-dev
ADD . /app
WORKDIR /app
RUN pip3 install -U pip
RUN pip3 install -r requirements.txt
CMD python3 -m snapshot_manager

ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

LABEL \
    io.hass.name="Snapshot Manager" \
    io.hass.description="Backup and manage snapshots!" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Dougal Matthews <dougal@dougalmatthews.com>" \
    org.label-schema.description="Backup and manage snapshots!" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="Snapshot Manager" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://github.com/d0ugal/hassio-snapshot-manager" \
    org.label-schema.usage="https://github.com/d0ugal/hassio-snapshot-manager" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/d0ugal/hassio-snapshot-manager" \
    org.label-schema.vendor="Dougal Matthews"
