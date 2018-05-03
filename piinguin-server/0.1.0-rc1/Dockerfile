FROM snowplow-docker-registry.bintray.io/snowplow/base:0.1.0
LABEL maintainer="Snowplow Analytics Ltd. <support@snowplowanalytics.com>"

# The version of the server to download
ENV PIINGUIN_SERVER_VERSION="0.1.0-rc6"

# The name of the archive to download
ENV ARCHIVE="snowplow_piinguin_server_${PIINGUIN_SERVER_VERSION}"

# Install Iglu Server, postgresql client
RUN wget -q http://dl.bintray.com/snowplow/snowplow-generic/${ARCHIVE} && \
    chown -R snowplow:snowplow ${ARCHIVE}

EXPOSE 8080

# Defines an entrypoint script delegating the launching of the server to the snowplow user.
# The script uses dumb-init as the top-level process.
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]

CMD [ "--help" ]
