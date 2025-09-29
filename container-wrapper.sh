#!/bin/bash
set -euo pipefail

ACTION="${1:-}"
shift || true

CONTAINER_NAME="devpod-${USER}-workspace"
IMAGE="${IMAGE:-ubuntu}"  # Override via env or args

case "$ACTION" in
  create)
    container run --detach --name "$CONTAINER_NAME" "$IMAGE" bash
    ;;
  start)
    container start "$CONTAINER_NAME"
    ;;
  stop)
    container stop "$CONTAINER_NAME"
    ;;
  delete)
    container rm "$CONTAINER_NAME"
    ;;
  status)
    container inspect "$CONTAINER_NAME" | jq -r '.State.Status'
    ;;
  exec)
    container exec "$CONTAINER_NAME" "$@"
    ;;
  logs)
    container logs "$CONTAINER_NAME"
    ;;
  *)
    echo "Unsupported action: $ACTION"
    exit 1
    ;;
esac
