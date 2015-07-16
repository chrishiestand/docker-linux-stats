FROM ubuntu
MAINTAINER Chris Hiestand <chris@oakleon.com>

VOLUME /prochost

ENTRYPOINT ["/bin/bash", "/opt/bin/get-linux-stats"]

ADD https://raw.githubusercontent.com/chrishiestand/linux-system-stats/v0.0.7/get-system-stats /opt/bin/get-linux-stats
