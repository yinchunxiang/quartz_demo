#!/bin/bash

PROJECT_PATH=.
JAR_PATH=${PROJECT_PATH}/lib
SRC_PATH=$PROJECT_PATH/src/
BIN_PATH=$PROJECT_PATH/target

rm -f $PROJECT_PATH/sources.list
find $SRC_PATH/main/java/com -name *.java > $PROJECT_PATH/sources.list

rm -rf $BIN_PATH
mkdir $BIN_PATH

JAR_LIST=$JAR_PATH/slf4j-api-1.6.6.jar:$JAR_PATH/quartz-2.2.1.jar:$JAR_PATH/log4j-1.2.16.jar:$JAR_PATH/slf4j-log4j12-1.6.6.jar

cp $SRC_PATH/main/resources/log4j.properties $BIN_PATH

javac -d $BIN_PATH/ -classpath ${JAR_LIST} @$PROJECT_PATH/sources.list
