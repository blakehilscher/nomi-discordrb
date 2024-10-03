# README

<img width="400" alt="Screenshot 2024-10-02 at 9 37 19 AM" src="https://github.com/user-attachments/assets/5fa8468d-f23e-4d98-a380-b15890373d9b">

# Discord Bot with `discordrb`

This project is a simple Discord bot built with the `discordrb` library in Ruby. The bot can listen for messages, reply to users, and perform other actions based on commands. It also connects to Discord's Gateway API to handle real-time events like message creation and user interactions.

## Features
- Responds to user messages.
  
## Requirements
- Ruby 
- Bundler
- A Discord bot token from the [Discord Developer Portal](https://discord.com/developers/applications).
- A Nomi API token from the [Nomi API](https://api.nomi.ai/docs/).

## Getting Started

### Install Ruby

To run this project, you need to have Ruby installed on your machine.

#### macOS

Using Homebrew:

```bash
brew install ruby
brew install git
```

#### Linux
```bash
sudo apt-get update
sudo apt-get install ruby-full git -y
```

#### Windows

You can install Ruby on Windows using the RubyInstaller https://rubyinstaller.org/. 
Download the installer and follow the setup instructions.


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

3. Start the bot and pass the name of the nomi as an argument:

```
bin/bot sara
```

#### Command Line Usage without ENV variables:
```
bin/bot sara discord-token-2 nomi-token-2
```

