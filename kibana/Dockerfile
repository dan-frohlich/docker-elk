ARG ELK_VERSION

# https://github.com/elastic/kibana-docker
FROM docker.elastic.co/kibana/kibana:${ELK_VERSION}

ARG CANVAS_VERSION

# Add your kibana plugins setup here
# Example: RUN kibana-plugin install <name|url>
COPY kibana-canvas-*.zip /var/tmp/kibana-canvas-${CANVAS_VERSION}.zip
RUN cd /usr/share/kibana/ && NODE_OPTIONS="--max-old-space-size=2048" \
    ./bin/kibana-plugin install file:///var/tmp/kibana-canvas-${CANVAS_VERSION}.zip
