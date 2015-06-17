# docker-linux-stats
Prints linux system stats from inside a container. Just a docker wrapper around <https://github.com/chrishiestand/linux-system-stats>

##Run once
docker run -v=/proc:/prochost:ro chrishiestand/linux-stats /prochost

##Run in Loop, 60 seconds between runs
docker run -v=/proc:/prochost:ro chrishiestand/linux-stats /prochost 60