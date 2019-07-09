FROM java:8

RUN curl -o /tmp/sonar.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.0.0.1744-linux.zip \
    && unzip /tmp/sonar.zip -d /opt/ \
    && rm -f /tmp/sonar.zip \
    && mv /opt/sonar-scanner-4.0.0.1744-linux /opt/sonar \
    && mkdir -p /opt/code

RUN curl -o /tmp/node.tar.xz https://nodejs.org/dist/v10.16.0/node-v10.16.0-linux-x64.tar.xz \
    && tar xf /tmp/node.tar.xz -C /opt/ \
    && ln -sf /opt/node-v10.16.0-linux-x64/bin/node /usr/bin/node \
    && ln -sf /opt/node-v10.16.0-linux-x64/bin/npm /usr/bin/npm

WORKDIR /opt/code
