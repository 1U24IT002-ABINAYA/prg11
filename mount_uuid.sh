#!/bin/bash

# ==========================================
# Mount Filesystem Using UUID
# Student Name:ABINAYA S
# Roll Number:1U24IT002
# ==========================================


# Display filesystem UUID
echo "Available filesystems and UUIDs:"
sudo blkid

# Create mount directory
sudo mkdir -p /mnt/mydisk

# Ask user to enter the UUID
read -p "Enter the filesystem UUID to mount: " UUID

# Mount filesystem using UUID
sudo mount UUID="$UUID" /mnt/mydisk

# Check whether mounting was successful
if mountpoint -q /mnt/mydisk
then
    echo "Filesystem mounted successfully!"
else
    echo "Failed to mount filesystem."
    exit 1
fi

# Display mounted filesystem
echo
echo "Mounted filesystem:"
df -h /mnt/mydisk
