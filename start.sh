#!/bin/sh

if [ -z "$PROXY_PASS" ]; then
  echo "PROXY_PASS is not set"
  exit 1
fi

sed -i "s|PROXY_PASS|$PROXY_PASS|g" /etc/nginx/nginx.conf
echo "PROXY_PASS set to $PROXY_PASS"

exec nginx