#!/bin/bash

# Backup Script
DIRS="/git/password-vault/data/"
tar -czf /mnt/backup/$(hostname)-$(date +%F).tar.gz $DIRS

# Send Backup file to harrison-nas
rsync -avh /mnt/backup/$(hostname)-$(date +%F).tar.gz [backup-user]]@[backup-destination]]:/mnt/backups/$(hostname)/

# Cleanup old backups
find /mnt/backup/*.tar.gz -type f -mtime +5 -exec rm -rf {} \;
