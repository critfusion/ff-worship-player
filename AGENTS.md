# ff-worship-player: rules for every agent working in this repo

A single-page worship video player for Freedom Fellowship. `index.html` plays a fixed list of YouTube videos in a loop. No build step, no dependencies.

## Setup and gate
- No install, build or test command. There is no test suite, linter or package file in the repo.
- Check a change by running a local server (`./run-player-mac-linux.sh` or `run-player-windows.bat`) and opening `http://localhost:8099/`. Not verified: automated checks of any kind.
- Do not open `index.html` as a `file:` page. YouTube blocks embeds there (player error 153), and the page says so.

## Layout
- `index.html`: markup, styles and script. The playlist is the `ITEMS` array in the script.
- `run-player-mac-linux.sh`, `run-player-windows.bat`: start `python3 -m http.server` (or `py` / `python` on Windows) on port 8099 and open the browser.

## Deploy
- The page names `https://critfusion.github.io/ff-worship-player/` as its hosted address. That is GitHub Pages. Pages settings are not in the repo files. Not verified: what triggers a publish.
- Merging to the default branch can change what church volunteers see. Open a PR and get review first.

## Rules
- This repo is public. Do not add internal hostnames, IPs, emails, account names, tokens or private ids.
- Playlist order is documented in the comment above `ITEMS`: the youth worship set first, the instrumental intro once per session, then the loop returns to the first song. Keep that behaviour when you edit the list.
- Autoplay starts muted and unmutes after the start-screen click. Captions are removed on purpose. Keep both unless asked to change them.
