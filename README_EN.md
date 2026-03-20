# Account Entry (Game 101)

A Flutter app to manage players and track scores for the "Game 101" card game.

## Features
- Create and delete players (up to 6 players).
- Start a game when at least 2 players exist.
- Track each player’s score and update it during the game.
- Round counter with a "finish round" action.
- Reset all scores to zero when the game ends.
- Local persistence using SQLite (sqflite).
- English and Russian UI strings.

## Game Rules Implemented
- If a player’s score reaches 100, it is set to 50.
- If a player’s score reaches 101, it is reset to 0.
- If a player’s score is greater than 101, the UI shows a loss state for that player.

## Tech Stack
- Flutter / Dart
- Provider (state management)
- sqflite (SQLite storage)
- intl (localization)

## Run Locally
1. Install Flutter SDK.
2. Fetch dependencies:
   flutter pub get
3. Run the app:
   flutter run

## Project Structure (high level)
- lib/ui: UI pages and widgets
- lib/repository, lib/service: data access and state
- lib/db: SQLite helper
- lib/l10n: localization strings
