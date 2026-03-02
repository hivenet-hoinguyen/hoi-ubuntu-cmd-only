FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
  apt-get install -y --no-install-recommends nano curl ca-certificates gnupg && \
  curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
  apt-get install -y --no-install-recommends nodejs && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

CMD ["sleep", "900"]
