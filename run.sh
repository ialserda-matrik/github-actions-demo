#!/bin/sh

# Run script to be packaged inside docker container for starting the spring-boot service

if [ $# -eq 0 ]
then
  echo "[ERROR] Usage: `basename $0` <port> <optional-jvm-options>"
  exit 1
fi

PORT=$1
shift
JVM_OPTIONS=$*

# jarfile is expected in the same directory as the run scripts
DIRNAME=`dirname $0`

echo "[INFO] Run: java -Dserver.port=$PORT $JVM_OPTIONS -jar $DIRNAME/service.jar"
exec java $JVM_OPTIONS -jar $DIRNAME/service.jar
