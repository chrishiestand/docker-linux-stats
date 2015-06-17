For system monitoring

## Run once

    docker run -v=/proc:/prochost:ro chrishiestand/linux-stats /prochost

## Run in Loop, 60 seconds between runs

    docker run -v=/proc:/prochost:ro chrishiestand/linux-stats /prochost 60

## Data collection mode

    docker run -d --restart=always -v=/proc:/prochost:ro chrishiestand/linux-stats /prochost 60

It's up to you to set the output to e.g. stdout or syslog and collect the metrics as you wish. In the future I may open source what I've done to solve that part of the problem.

## Output

Columns are: measurement name_unit, measure value, timestamp in ms

```
__BASH_METRIC;cpu_aggregate_normalized_p:2:1434571003325
__BASH_METRIC;cpu_idle_userhz:59390666:1434571004487
__BASH_METRIC;cpu_iowait_userhz:4224:1434571004487
__BASH_METRIC;cpu_processthread_count:41361:1434571004487
__BASH_METRIC;load_average_1:0.26:1434571004499
__BASH_METRIC;load_average_5:0.09:1434571004499
__BASH_METRIC;load_average_15:0.07:1434571004499
__BASH_METRIC;memory_used_B:902803456:1434571004508
__BASH_METRIC;memory_available_B:1199001600:1434571004508
__BASH_METRIC;vmstat_pageouts_count:4453568:1434571004516
__BASH_METRIC;root_disk_used_KiB:33816536:1434571004520
__BASH_METRIC;root_disk_free_KiB:60788692:1434571004520
__BASH_METRIC;sda_reads_count:655:1434571004528
__BASH_METRIC;sda_writes_count:233090:1434571004528
__BASH_METRIC;sda_io_queued_count:29550:1434571004528
__BASH_METRIC;eth0_received_aggregate_B:274568735:1434571004538
__BASH_METRIC;eth0_received_packet_count:463501:1434571004538
__BASH_METRIC;eth0_received_error_count:0:1434571004538
__BASH_METRIC;eth0_transmitted_aggregate_B:76652324:1434571004538
__BASH_METRIC;eth0_transmitted_packet_count:270845:1434571004538
__BASH_METRIC;eth0_transmitted_error_count:0:1434571004538
```

Based on:

https://github.com/chrishiestand/docker-linux-stats
https://github.com/chrishiestand/linux-system-stats
