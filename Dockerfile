# syntax=docker/dockerfile:1.6
FROM node:24-alpine AS runtime

ARG TARGETOS=linux
ARG TARGETARCH

# Install runtime dependencies
RUN set -eux; \
    apk add --no-cache curl tar

# Copy package metadata to determine the Inspectr version
COPY package.json /tmp/package.json

# Download and install the Inspectr binary that matches the build platform
RUN set -eux; \
    INSPECTR_VERSION="$(sed -n 's/.*\"version\": \"\([^\"]*\)\".*/\1/p' /tmp/package.json)"; \
    case "${TARGETARCH}" in \
      amd64) INSPECTR_ARCH=amd64 ;; \
      arm64) INSPECTR_ARCH=arm64 ;; \
      *) echo "unsupported architecture: ${TARGETARCH}" >&2; exit 1 ;; \
    esac; \
    curl -fsSL -o /tmp/inspectr.tar.gz "https://github.com/inspectr-hq/inspectr/releases/download/v${INSPECTR_VERSION}/inspectr_${INSPECTR_VERSION}_${TARGETOS}_${INSPECTR_ARCH}.tar.gz"; \
    tar -xzf /tmp/inspectr.tar.gz -C /usr/local/bin inspectr; \
    chmod +x /usr/local/bin/inspectr; \
    rm -rf /tmp/inspectr.tar.gz /tmp/package.json

# Provide a writable workspace for Inspectr data
WORKDIR /data
VOLUME ["/data"]

EXPOSE 4004 8080

ENTRYPOINT ["inspectr"]
