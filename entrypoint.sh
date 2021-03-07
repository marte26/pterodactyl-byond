#!/bin/bash
cd /home/container

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

if [ ${SERVER_HIDDEN} ]
then
  MODIFIED_STARTUP="${MODIFIED_STARTUP} -hidden"
fi

# Run the Server
${MODIFIED_STARTUP}
