FROM node:10-slim

LABEL version="1.0.0"
LABEL repository="https://github.com/canvas-medical/actions-yarn"
LABEL homepage="https://github.com/canvas-medical/actions-yarn"
LABEL maintainer="Beau Gunderson <beau.gunderson@canvasmedical.com>"

LABEL com.github.actions.name="GitHub Action for Yarn"
LABEL com.github.actions.description="Wraps the yarn CLI to enable common yarn commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"

RUN \
  apt update && \
  apt install \
    --assume-yes \
    --no-install-recommends \
    git && \
  rm -rf /root/.cache

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
