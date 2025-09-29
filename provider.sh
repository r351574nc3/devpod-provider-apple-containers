#!/bin/bash
set -e

COMMAND="$1"
shift

case "$COMMAND" in
  create)
    ./container-wrapper.sh create "$@"
    ;;
  start)
    ./container-wrapper.sh start "$@"
    ;;
  stop)
    ./container-wrapper.sh stop "$@"
    ;;
  delete)
    ./container-wrapper.sh delete "$@"
    ;;
  status)
    ./container-wrapper.sh status "$@"
    ;;
  exec)
    ./container-wrapper.sh exec "$@"
    ;;
  *)
    echo "Unknown command: $COMMAND"
    exit 1
    ;;
esac
