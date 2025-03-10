#!/bin/bash
echo "Deploying to staging..."

# Ensure source directory exists before running rsync
if [ -d "/tmp/codedeploy-temp/" ]; then
    rsync -av /tmp/codedeploy-temp/ /home/testcase/
else
    echo "Warning: /tmp/codedeploy-temp/ not found. Skipping rsync."
fi

# Fix ownership
chown -R testcase:testcase /home/testcase/

echo "Staging deployment completed."
