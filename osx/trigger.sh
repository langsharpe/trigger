#!/bin/bash

WATCH_DIR=~/Dropbox/Projects/trigger/test
TRIGGER_CMD="echo 'TRIGGERED'"

# Create a temporary directory to put the named pipe in
TEMP_DIR=`mktemp -d -t trigger`

# Named pipe to read/write filesystem events
FSEVENT_PIPE=$TEMP_DIR/fsevent
mkfifo $FSEVENT_PIPE

# Write file system events into the pipe
FSEVENT_WATCH_CMD="$(dirname $0)/bin/fsevent_watch -f classic"
$FSEVENT_WATCH_CMD $WATCH_DIR 1> $FSEVENT_PIPE 2> /dev/null &

# Read from the pipe, and run the trigger command for every line read
cat $FSEVENT_PIPE | while read ; do
        $TRIGGER_CMD
done



