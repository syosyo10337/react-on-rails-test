#!/bin/bash
set -e

# 初期値appのAPP_NAMEの値に対応させること。
rm -f /<app>/tmp/pids/server.pid

exec "$@"