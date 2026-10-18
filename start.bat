@echo off
rem Windows: pull the latest, then open the app.
cd /d "%~dp0"

git pull --ff-only || echo git pull failed. Check the network, or commit and push your local changes.

start "" index.html
