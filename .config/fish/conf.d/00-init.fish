#!/usr/bin/env fish

set -g RED '\033[0;31m'
set -g GREEN '\033[0;32m'
set -g YELLOW '\033[1;33m'
set -g BLUE '\033[0;34m'
set -g NC '\033[0m' # No Color

if not string length --q $DF_LOG_LEVEL
  set -g DF_LOG_LEVEL "debug"
  echo -e "DF_LOG_LEVEL not set. Defaulting to 'debug'."
end

function get_log_color -a level
  switch (string lower $level)
    case debug
      echo $BLUE
    case info
      echo $GREEN
    case warning
      echo $YELLOW
    case error
      echo $RED
    case '*'
      echo $NC
  end
end

function can_log -a level
  switch (string lower $DF_LOG_LEVEL)
    case debug
      return 0
    case info
      if test $level = "info" -o $level = "warning" -o $level = "error"
        return 0
      else
        return 1
      end
    case warning
      if test $level = "warning" -o $level = "error"
        return 0
      else
        return 1
      end
    case error
      if test $level = "error"
        return 0
      else
        return 1
      end
    case '*'
      return 1
  end
end

function log -a level message
  if not can_log $level
    return
  end

  printf (get_log_color $level)
  printf "[%s] " "$level"
  printf $NC
  printf "%s\n" "$message"
end

function log_debug -a message
  log "debug" $message
end

function log_info -a message
  log "info" $message
end

function log_error -a message
  log "error" $message
end

function log_warning -a message
  log "warning" $message
end
