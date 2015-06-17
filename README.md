# docker-linux-stats
Prints linux system stats from inside a container

##Run once
docker run -v=/proc:/prochost:ro chrishiestand/linux-stats /prochost

##Run in Loop, 60 seconds between runs
docker run -v=/proc:/prochost:ro chrishiestand/linux-stats /prochost 60