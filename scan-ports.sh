#!/usr/bin/bash
lower_port=$1
upper_port=$2

echo "Scanning ports $lower_port to $upper_port"

comm -23 <(seq $lower_port $upper_port | sort) <(ss -Htan | awk '{print $4}' | cut -d':' -f2 | sort -u) | shuf | head -n 3


