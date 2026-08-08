# Syncs all docker data volumes and stack data to UNAS-2 and UNAS-Pro through nfs.
# Excludes the lost+found directory that is present on non-root disks.
# Removes the -o and -g options from the -a option since UniFi Drive doesn't support changing owner/group and it gives many errors.

#UNAS-2
rsync -a --delete --no-o --no-g --exclude 'lost+found' /mnt/disk/docker-data/ /mnt/nfs/unas-2/docker-data

#UNAS-Pro
rsync -a --delete --no-o --no-g --exclude 'lost+found' /mnt/disk/docker-data/ /mnt/nfs/unas-pro/docker-data
