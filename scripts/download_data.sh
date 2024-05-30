#!/bin/bash

# Specify the target directory where files will be downloaded
TARGET_DIR="../data/input"

# Check if the target directory exists
if [ ! -d "$TARGET_DIR" ]; then
  echo "Creating target directory: $TARGET_DIR"
  mkdir -p "$TARGET_DIR"
else
  echo "Target directory already exists: $TARGET_DIR"
fi

# Loop through the specified months and download the files
for month in 01 02 03
do
  wget -P "$TARGET_DIR" "https://d37ci6vzurychx.cloudfront.net/trip-data/green_tripdata_2023-${month}.parquet"
done

echo "Downloads completed to $TARGET_DIR"
