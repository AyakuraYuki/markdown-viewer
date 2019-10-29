FROM python:3.7-alpine
LABEL maintainer="Ayakura Yuki <AyakuraYuki@users.noreply.github.com>"

ENV SRCROOT="/usr/src/markdown_viewer"
ENV WORKROOT="/docroot"

RUN mkdir -p ${SRCROOT}
RUN apk --no-cache add curl
RUN curl -G "http://oss.ayakurayuki.cc/markdown_viewer/index.txt" -o ${SRCROOT}/index.html

VOLUME ${WORKROOT}
WORKDIR ${WORKROOT}

EXPOSE 80

CMD if [ -e ${WORKROOT}/index.html ]; then echo "Page exist, ready to go."; else cp -f "${SRCROOT}/index.html" "${WORKROOT}/index.html"; fi && python -m http.server 80
