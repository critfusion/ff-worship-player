# ff-worship-player

A full-screen player that plays a fixed list of YouTube worship videos in order and loops. It is one HTML file.

Status: last change 2026-11-10.

## Use
Hosted address named in `index.html`: https://critfusion.github.io/ff-worship-player/

Click the start screen, then use these keys:

| Key | Action |
|---|---|
| Space | Pause or play |
| Left / right arrow | Previous or next video |
| R | Restart the current video |
| F | Fullscreen on or off |

The playlist loops. The instrumental intro plays once per session, then is skipped on later passes.

## Run locally
YouTube blocks embeds on `file:` pages, so serve the folder:

- macOS or Linux: `./run-player-mac-linux.sh` (needs `python3`)
- Windows: `run-player-windows.bat` (needs Python)

Both start `http.server` on port 8099 and open `http://localhost:8099/`. On macOS or Linux, close the terminal window or press Ctrl+C when done. On Windows, close the separate minimized `worship-player` window to stop the server.

## Change the playlist
Edit the `ITEMS` array in `index.html`. Each entry has a YouTube video id, title, note and section.

## Test and deploy
There are no tests and no build. Not verified: how the hosted page is published (GitHub Pages settings are outside the repo files).
