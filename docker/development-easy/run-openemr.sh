#!/bin/bash

# Make the file executable.
chmod +x openemr-cmd

# Run the file with "up" command
./openemr-cmd up

# Print a message to the user
echo "Please run 'openemr-cmd dl' to check OpenEMR completion status. This may take around 30 minutes to complete. You can also run 'docker ps' command to check the containers running."

