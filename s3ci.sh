#! /bin/bash

#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

echo "Downloading S3 Cliiper..."

sudo wget -P /usr/local/bin https://github.com/wildcommunist/s3-clipper/raw/refs/heads/main/s3c

s3c

echo "S3 Clipper installed!"
