#!/bin/bash

# ==========================================
# Mount Filesystem Using UUID
# Student Name:abinaya
# Roll Number:1U24IT002
# ==========================================


# Display filesystem UUID
sudo blkid



# Create mount directory
sudo mkdir -p /mnt/mydisk



# Mount filesystem using UUID
# Replace YOUR_UUID with actual UUID
sudo mount UUID=YOUR_UUID /mnt/mydisk




# Display mounted filesystem
df -h /mnt/mydisk

