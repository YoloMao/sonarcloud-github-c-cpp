#!/bin/bash

case ${OS} in
  Windows)
    SONAR_SCANNER_SUFFIX="windows"
    SONAR_SCANNER_NAME="sonar-scanner.bat"
    SONAR_SCANNER_URL="${SONAR_SCANNER_URL_WINDOWS}"
    SONAR_SCANNER_SHA="${SONAR_SCANNER_SHA_WINDOWS}"
    ;;
  Linux)  
    SONAR_SCANNER_SUFFIX="linux"
    SONAR_SCANNER_NAME="sonar-scanner"
    SONAR_SCANNER_URL="${SONAR_SCANNER_URL_LINUX}"
    SONAR_SCANNER_SHA="${SONAR_SCANNER_SHA_LINUX}"
    ;;
  macOS)
    SONAR_SCANNER_SUFFIX="macosx"
    SONAR_SCANNER_NAME="sonar-scanner"
    SONAR_SCANNER_URL="${SONAR_SCANNER_URL_MACOSX}"
    SONAR_SCANNER_SHA="${SONAR_SCANNER_SHA_MACOSX}"
    ;;
  *)
    echo "::error::Unsupported runner OS '${OS}'"
    exit 1
    ;;
esac


echo "sonar-scanner-url=${SONAR_SCANNER_URL}"
echo "sonar-scanner-sha=${SONAR_SCANNER_SHA}"

SONAR_SCANNER_DIR="${INSTALL_PATH}/sonar-scanner-${SONAR_SCANNER_VERSION}-${SONAR_SCANNER_SUFFIX}"
echo "sonar-scanner-dir=${SONAR_SCANNER_DIR}"
echo "sonar-scanner-bin=${SONAR_SCANNER_DIR}/bin/${SONAR_SCANNER_NAME}"

