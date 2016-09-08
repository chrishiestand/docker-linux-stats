For system monitoring

## Run once

    docker run -v=/proc:/prochost:ro chrishiestand/linux-stats /prochost

## Run in Loop, 60 seconds between runs

    docker run -v=/proc:/prochost:ro chrishiestand/linux-stats /prochost 60

## Data collection mode

    docker run -d --restart=always -v=/proc:/prochost:ro chrishiestand/linux-stats /prochost 60

It's up to you to set the output to e.g. stdout or syslog and collect the metrics as you wish. In the future I may open source what I've done to solve that part of the problem.

## Release Notes

### v1.1
now required linux kernel 3.14 or greater because it uses MemAvail from `/proc/meminfo` and memory units are now KiB

### v1.0
requires linux kernel version 2.16 <= x <= 3.13

## Output
```__BASH_METRIC_x``` where x is the version of the output format.

Columns are: measurement name_unit, measure value, timestamp in ms

```
__BASH_METRIC_1;cpu_aggregate_normalized_p:2:1473301256488
__BASH_METRIC_1;cpu_idle_userhz:267973679:1473301257648
__BASH_METRIC_1;cpu_iowait_userhz:152668:1473301257648
__BASH_METRIC_1;cpu_processthread_count:10218963:1473301257648
__BASH_METRIC_1;load_average_1:0.28:1473301257657
__BASH_METRIC_1;load_average_5:0.23:1473301257657
__BASH_METRIC_1;load_average_15:0.22:1473301257657
__BASH_METRIC_1;memory_used_KiB:1666756:1473301257666
__BASH_METRIC_1;memory_available_KiB:6013064:1473301257666
__BASH_METRIC_1;vmstat_pageouts_count:55731643:1473301257673
__BASH_METRIC_1;root_disk_used_KiB:8763484:1473301257675
__BASH_METRIC_1;root_disk_free_KiB:90000448:1473301257675
__BASH_METRIC_1;sda_reads_count:657:1473301257682
__BASH_METRIC_1;sda_writes_count:3679828:1473301257682
__BASH_METRIC_1;sda_io_queued_count:1074700:1473301257682
__BASH_METRIC_1;eth0_received_aggregate_B:9011030047:1473301257690
__BASH_METRIC_1;eth0_received_packet_count:20824072:1473301257690
__BASH_METRIC_1;eth0_received_error_count:0:1473301257690
__BASH_METRIC_1;eth0_transmitted_aggregate_B:5346063411:1473301257690
__BASH_METRIC_1;eth0_transmitted_packet_count:22363301:1473301257690
__BASH_METRIC_1;eth0_transmitted_error_count:0:1473301257690
```

### Output History

#### 1.1
* `memory_used` changed to KiB
* `memory_available` changed to KiB

Based on:

* <https://github.com/chrishiestand/docker-linux-stats>
* <https://github.com/chrishiestand/linux-system-stats>
