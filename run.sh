#!/bin/bash

PROJECT_PATH=.
JAR_PATH=${PROJECT_PATH}/lib
SRC_PATH=$PROJECT_PATH/src/
BIN_PATH=$PROJECT_PATH/target

JAR_LIST=$BIN_PATH:$JAR_PATH/slf4j-api-1.6.6.jar:$JAR_PATH/quartz-2.2.1.jar:$JAR_PATH/log4j-1.2.16.jar:$JAR_PATH/slf4j-log4j12-1.6.6.jar

#java -classpath $JAR_PATH/quartz-2.2.1.jar:$JAR_PATH/log4j-1.2.16.jar $BIN_PATH/classes/com/otv/JobScheduler
java -classpath ${JAR_LIST} com.otv.JobScheduler
