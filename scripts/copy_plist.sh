#!/bin/bash
CONFIGURATION="${CONFIGURATION}"
TARGET_PLIST="${SRCROOT}/Runner/GoogleService-Info.plist"

case "$CONFIGURATION" in
  "Debug-production"*)
    cp "${SRCROOT}/Runner/GoogleService-Info-prod.plist" "$TARGET_PLIST"
    ;;
  "Debug-development"*)
    cp "${SRCROOT}/Runner/GoogleService-Info.plist" "$TARGET_PLIST"
    ;;
esac