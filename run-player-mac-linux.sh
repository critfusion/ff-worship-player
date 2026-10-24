#!/usr/bin/env bash
# 2026 Fall Retreat worship player - serves this folder so the YouTube embeds
# are allowed to play (browsers block them from file://).
cd "$(dirname "$0")" || exit 1
PORT=8099

python3 -m http.server "$PORT" >/dev/null 2>&1 &
SERVER=$!
sleep 1.5

if command -v open >/dev/null 2>&1; then
  open "http://localhost:$PORT/"
elif command -v xdg-open >/dev/null 2>&1; then
  xdg-open "http://localhost:$PORT/"
else
  echo "Open http://localhost:$PORT/ in your browser."
fi

echo "Player is running. Press Ctrl+C in this window when the service is over."
wait $SERVER
