#!/usr/bin/dumb-init /bin/sh
set -e

# Make sure we run the server as the snowplow user
exec su-exec snowplow:snowplow /usr/bin/java \
  $SP_JAVA_OPTS -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap \
  -jar ${ARCHIVE} "$@"
