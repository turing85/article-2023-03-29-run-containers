FROM docker.io/ubuntu:22.04
LABEL \
  org.opencontainers.image.authors="Marco Bungart <mail@example.com>" \
  org.opencontainers.image.licenses=Apache-2.0 \
  purpose="Learning containers"

RUN useradd \
  --uid 1000 \
  --home-dir /app \
  --create-home \
  --shell /bin/bash \
  runner
USER 1000
WORKDIR /app
RUN mkdir outdir
COPY \
  --chown=1000:1000 \
  --chmod=700 \
  script.sh .
ENTRYPOINT [ "./script.sh" ]