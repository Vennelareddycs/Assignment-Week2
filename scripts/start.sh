#!/bin/bash

mkdir -p /home/ec2-user/app

pkill -f assignmentcicd || true

JAR_FILE=$(find /home/ec2-user/app -name "*.jar" | head -n 1)

nohup java -jar $JAR_FILE > /home/ec2-user/app/app.log 2>&1 &