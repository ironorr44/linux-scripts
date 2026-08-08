#!/bin/bash

PHASE=$1
VMID=$3

case "$PHASE" in

backup-start)

  echo "$PHASE - Shutting down docker stacks on $VMID"
  qm guest exec "$VMID" -- /home/chris/scripts/docker-shutdown.sh

  echo "$PHASE - Backing up docker data on $VMID to NAS"
  qm guest exec "$VMID" -- /home/chris/scripts/docker-backup.sh

;;

backup-end)
  
  echo "$PHASE - Starting docker stacks on $VMID"
  qm guest exec "$VMID" -- /home/chris/scripts/docker-startup.sh

;;

esac
