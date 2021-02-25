#!/bin/bash

cd /home/lsarramone/rayman-magritte/cloud &&
	
	sudo chmod u+x gradlew && 
	
	sudo ./gradlew clean bootJar --no-daemon &&
	
	cd build/libs &&
	
	sudo killall -w -2 java &&

	sudo mv Rayman-0.0.1-SNAPSHOT.jar /home/lsarramone/app/Rayman.jar &&

	echo "Ejecutando .jar"

	sudo nohup java -jar ~/app/Rayman.jar --server.port=80 >/dev/null 2>/dev/null &

