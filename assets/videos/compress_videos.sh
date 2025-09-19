#!/bin/bash
mkdir -p compressed
for file in spotlight_2025/*.mp4; do
  filename=$(basename "$file")
  ffmpeg -i "$file" -vcodec libx264 -crf 28 -preset slow -acodec aac -b:a 128k -movflags +faststart "compressed/$filename"
done