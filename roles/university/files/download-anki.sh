#!/bin/bash

VERSION="2.1.66"
ARCHIVE_NAME="anki-${VERSION}-linux-qt6.tar.zst"
URL="https://github.com/ankitects/anki/releases/download/${VERSION}/${ARCHIVE_NAME}"
DESTINATION="$HOME/.local/src"
ANKI_DIRECTORY="${DESTINATION}/anki"

rm -rf "$ANKI_DIRECTORY" && \
curl -Lo "$DESTINATION/${ARCHIVE_NAME}" "$URL" && \
  tar xaf "${DESTINATION}/${ARCHIVE_NAME}" -C "${DESTINATION}" && \
  mv "${DESTINATION}/$(basename $ARCHIVE_NAME .tar.zst)" "$ANKI_DIRECTORY"
