FROM nvcr.io/nvidia/isaac-sim:6.0.1

ENV ACCEPT_EULA=Y

USER root

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      python3.12 python3.12-venv python3.12-dev \
      ca-certificates curl \
 && rm -rf /var/lib/apt/lists/*

RUN python3.12 -m venv /workspace/venv312

USER isaac-sim
