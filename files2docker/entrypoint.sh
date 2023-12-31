#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
echo "removing pid file"
rm -f /project/tmp/pids/server.pid

# If Gemfile is present
if [ -f Gemfile ]; then
  echo "bundle install..."
  bundle check || bundle install --jobs 4
fi

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"