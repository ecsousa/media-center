#!/bin/bash

if [ -z "$KODI_HOST" ]; then
    exit 0;
fi;

if [ -z "$KODI_PORT" ]; then
    PORT=80;
else
    PORT=$KODI_PORT;
fi;

if ! timeout 0.2 nc -z $KODI_HOST $PORT; then
    exit 0;
fi;

BASE_URL=http://

if [ ! -z "$KODI_USER" ]; then
    BASE_URL=$BASE_URL$KODI_USER:$KODI_PASSWORD@
fi;

BASE_URL=$BASE_URL$KODI_HOST;

if [ ! -z "$KODI_PORT" ]; then
    BASE_URL=$BASE_URL:$KODI_PORT;
fi;

curl --data-binary \
    '{ "jsonrpc": "2.0", "method": "VideoLibrary.Scan", "id": "mybash"}\
    ' -H 'content-type: application/json;' \
    $BASE_URL/jsonrpc > /dev/null 2>/dev/null
