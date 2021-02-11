#!/bin/bash
cd /home/container

# Output Current Java Version
java -version

# Make internal Docker IP address available to processes.
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`

# Replace Startup Variables
MODIFIED_STARTUP=`echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`

# Run the Server
eval ${MODIFIED_STARTUP}
