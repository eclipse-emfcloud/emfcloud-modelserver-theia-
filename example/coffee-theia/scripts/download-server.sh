#!/bin/bash
. ./functions.sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}")" && pwd )"
LIB_DIR=$SCRIPT_DIR/../build
TEMP_DIR=$SCRIPT_DIR/.temp
MODEL_SERVER_VERSION=0.7.0-SNAPSHOT
if [ ! -d $TEMP_DIR ]
then
    mkdir $TEMP_DIR
fi

if [ -d $LIB_DIR ]
then rm -rf $LIB_DIR
fi
mkdir -p $LIB_DIR

echo  "# Download and copy latest snapshot version org.eclipse.emfcloud.modelserver.example "
copy_artifact org.eclipse.emfcloud.modelserver org.eclipse.emfcloud.modelserver.example $MODEL_SERVER_VERSION $LIB_DIR standalone

rm -rf $TEMP_DIR
