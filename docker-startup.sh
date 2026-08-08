#!/usr/bin/bash

# List of Docker Stacks to Startup
# NOTE: Must be the exact folder name inside the "stacks" directory
# NOTE: They will start in the order they are listed
stacks=("stack1" "stack2")

# Start each stack in the list
for stack in "${stacks[@]}"; do
  docker compose -f /mnt/disk/docker-data/stacks/$stack/compose.yaml up -d
done
