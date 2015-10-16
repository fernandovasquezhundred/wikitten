#!/bin/bash
nohup mono-sgen /root/myapp /path/file > /dev/null 2>&1 &

15 11 * * * touch "/tmp/$(date +%d-%m-%Y).sql"

