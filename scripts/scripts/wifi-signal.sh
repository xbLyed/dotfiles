#!/bin/bash

watch -n1 -d "awk 'NR==3 {print \"WiFi Link quality =  \" int(\$3*1.428571429) \"%   (\"\$3\"00/70.00)\"; print \"WiFi Signal level = \" \$4 \"00 dBm\"}''' /proc/net/wireless"