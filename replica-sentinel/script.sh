#!/bin/bash

# Run the first echo command
echo "Runing script"

# Run the sleep command for 30 seconds in the background
(sleep 30 && redis-server sentinel.conf --sentinel) &

redis-server /etc/redis/redis.conf

exit 0
