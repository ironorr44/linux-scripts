#!/usr/bin/bash

# List of Docker Stacks to Shutdown
# NOTE: Must be the exact folder name inside the "stacks" directory
# NOTE: They will stop in the order they are listed
stacks=("stack1" "stack2")

# Stop each stack in the list
for stack in "${stacks[@]}"; do
  docker compose -f /mnt/disk/docker-data/stacks/$stack/compose.yaml down
done
