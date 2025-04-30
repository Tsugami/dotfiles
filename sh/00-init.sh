#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Default log level if not set
DF_LOG_LEVEL=${DF_LOG_LEVEL:-"debug"}

# Logger functions with colors
log_debug() {
  if [ "$DF_LOG_LEVEL" = "debug" ]; then
    echo -e "${BLUE}[DEBUG]${NC} $1"
  fi
}

log_info() {
  if [ "$DF_LOG_LEVEL" = "debug" ] || [ "$DF_LOG_LEVEL" = "info" ]; then
    echo -e "${GREEN}[INFO]${NC} $1"
  fi
}

log_error() {
  if [ "$DF_LOG_LEVEL" = "debug" ] || [ "$DF_LOG_LEVEL" = "info" ] || [ "$DF_LOG_LEVEL" = "error" ]; then
    echo -e "${RED}[ERROR]${NC} $1" >&2
  fi
}

log_warning() {
  if [ "$DF_LOG_LEVEL" = "debug" ] || [ "$DF_LOG_LEVEL" = "info" ] || [ "$DF_LOG_LEVEL" = "error" ]; then
    echo -e "${YELLOW}[WARNING]${NC} $1" >&2
  fi
}