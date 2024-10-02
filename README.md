# README

# Discord Bot with `discordrb`

This project is a simple Discord bot built with the `discordrb` library in Ruby. The bot can listen for messages, reply to users, and perform other actions based on commands. It also connects to Discord's Gateway API to handle real-time events like message creation and user interactions.

## Features
- Responds to user messages.
- Sends a message when the bot is ready.
- Ignores messages from other bots.
  
## Requirements
- Ruby (>= 2.6)
- Bundler
- A Discord bot token from the [Discord Developer Portal](https://discord.com/developers/applications).

## Getting Started

### Install Ruby

To run this project, you need to have Ruby installed on your machine.

#### macOS

Using Homebrew:

```bash
brew install ruby
```

#### Linux
```bash
sudo apt update
sudo apt install ruby-full
```

#### Windows

You can install Ruby on Windows using the RubyInstaller https://rubyinstaller.org/. Download the installer and follow the setup instructions.


## Usage

0. Clone the repository:

```
git clone https://github.com/blakehilscher/nomi-discordrb.git
cd nomi-discordrb
```

1. Set Environment variables in ~/.bash_profile or ~/.bashrc like:
```
export DISCORD_BOT_TOKEN=MTI5xjkdslajfkldsfjsdklfjdsklfjskl
export NOMI_TOKEN=99999999-5555-4444-8888-111111111
```

2. Install dependencies:

```
bundle install
```

3. Start the bot and pass the name of the bot as an argument:

```
bin/bot sara
```

# Optionally start the bot with command line arguments:

```
bin/bot pat discord-token-2 nomi-token-2
```
