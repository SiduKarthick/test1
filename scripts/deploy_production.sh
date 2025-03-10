#!/bin/bash
echo "Deploying to production..."

# Ensure source directory exists before running rsync
if [ -d "/tmp/codedeploy-temp/" ]; then
    rsync -av --delete /tmp/codedeploy-temp/ /home/etpmc/
else
    echo "Warning: /tmp/codedeploy-temp/ not found. Skipping rsync."
fi

# Fix ownership
chown -R etpmc:etpmc /home/etpmc/

echo "Production deployment completed."

