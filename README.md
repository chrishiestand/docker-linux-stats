For system monitoring

## Run once

    docker run -v=/proc:/prochost:ro chrishiestand/linux-stats /prochost

## Run in Loop, 60 seconds between runs

    docker run -v=/proc:/prochost:ro chrishiestand/linux-stats /prochost 60

## Data collection mode

    docker run -d --restart=always -v=/proc:/prochost:ro chrishiestand/linux-stats /prochost 60

It's up to you to set the output to e.g. stdout or syslog and collect the metrics as you wish. In the future I may open source what I've done to solve that part of the problem.

## Output
```__BASH_METRIC_x``` where x is the version of the output format.

Columns are: measurement name_unit, measure value, timestamp in ms

```
__BASH_METRIC_0;cpu_aggregate_normalized_p:0:1434572962187
__BASH_METRIC_0;cpu_idle_userhz:59762069:1434572963350
__BASH_METRIC_0;cpu_iowait_userhz:4250:1434572963350
__BASH_METRIC_0;cpu_processthread_count:41739:1434572963350
__BASH_METRIC_0;load_average_1:0.10:1434572963360
__BASH_METRIC_0;load_average_5:0.05:1434572963360
__BASH_METRIC_0;load_average_15:0.05:1434572963360
__BASH_METRIC_0;memory_used_B:902303744:1434572963369
__BASH_METRIC_0;memory_available_B:1199501312:1434572963369
__BASH_METRIC_0;vmstat_pageouts_count:4536400:1434572963376
__BASH_METRIC_0;root_disk_used_KiB:33816684:1434572963380
__BASH_METRIC_0;root_disk_free_KiB:60788544:1434572963380
__BASH_METRIC_0;sda_reads_count:655:1434572963389
__BASH_METRIC_0;sda_writes_count:239344:1434572963389
__BASH_METRIC_0;sda_io_queued_count:29720:1434572963389
__BASH_METRIC_0;eth0_received_aggregate_B:258:1434572963397
__BASH_METRIC_0;eth0_received_packet_count:3:1434572963397
__BASH_METRIC_0;eth0_received_error_count:0:1434572963397
__BASH_METRIC_0;eth0_transmitted_aggregate_B:258:1434572963397
__BASH_METRIC_0;eth0_transmitted_packet_count:3:1434572963397
__BASH_METRIC_0;eth0_transmitted_error_count:0:1434572963397
```

Based on:

* <https://github.com/chrishiestand/docker-linux-stats>
* <https://github.com/chrishiestand/linux-system-stats>
