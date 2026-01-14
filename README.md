# KCCPEN-SteamOS
## Installation Guide (and script) for Kantai Collection on the Steam Deck (SteamOS 3.0 Holo)
### Credit to Oradimi for the hard work with the [actual english patch](https://github.com/Oradimi/KanColle-English-Patch-KCCP)
[Join his English Patch Discord here!](https://discord.gg/krMeMKB)
## Introduction
This guide is based on the original Linxu guide tuned specifically to the hardware/operating system peculiarities for Steam OS 3.0 (holo) which is currently being used by the Steam Deck. The guide will also (hopefully) be compatible with all the devices that target SteamOS. The reason for a seperate guide actually comes from certain peculiarities of SteamOS. The first one is the fact that SteamOS runs two different compositors for various parts of the user experience, namely wayland for the desktop mode and gamescope for gamemode, while desktop mode operations is very similiar to any linux distribution, gamescope does not render a desktop nor does it actually allow you to execute new programs*. Secondly, there is a certain part of SteamOS/KDE that communicates with port 8080 and as such the operating system reserves this port - this guide will also show you how to modify the KCCP port to mitigate this issue.
### TL;DR SteamOS is a bit different from Ubuntu or Arch and we also want to leverage Steam's Gamescope to add Kantai Collection to the console UI of SteamOS so a specific SteamOS guide must be written.


# As of Jan 14, 2026 this guide should not be relied on thanks to both Chrome manifest changes and due to C2 upgrading to HTTPS for all servers. Please find help in the discord server above for complicated linux installs.


## The rest of the guide is here for archival purposes until work can be done to update it

## Installation Guide 
### Prerequisites
- Familiarize yourself with the [installation guide for KanColle](https://docs.google.com/document/d/1S3-Uv9wbuv2lAkjc_5oH6T069rb7QlTP90W2AHoNPzg/edit#heading=h.181npd1fnl0), but do not execute any steps yet.
- Ensure you have [Chrome](https://beebom.com/how-install-google-chrome-steam-deck/) installed on your Steam Deck.
- It's recommended to use a keyboard or copy-paste long commands for convenience.

### Installation Steps

#### 1. Create and Navigate to KCCP Folder:
- Open a terminal and create a new folder named KCCP:
  ```
  mkdir KCCP
  ```
- Navigate to the KCCP folder:
  ```
  cd KCCP
  ```

#### 2. Clone Repositories:
- Clone the KanColle SteamOS English Installer repository:
  ```
  git clone https://github.com/Globalnet626/Kancolle-SteamOS-English-Installer
  ```
- Clone the English patch repository:
  ```
  git clone https://github.com/Oradimi/KanColle-English-Patch-KCCP
  ```
- Download the KCCP using wget:
  ```
  wget https://github.com/Tibowl/KCCacheProxy/releases/download/v2.6.3/KCCacheProxy-linux.zip
  ```

#### 3. Prepare the Installer:
- Navigate to the Kancolle-SteamOS-English-Installer folder:
  ```
  cd Kancolle-SteamOS-English-Installer
  ```
- Make the `Kancolle.sh` script executable:
  ```
  chmod +x Kancolle.sh
  ```
- Exit the terminal.

#### 4. Extract and Configure KCCacheProxy:
- Open the file explorer and navigate to the KCCP folder.
- Extract `KCCacheProxy-Linux.zip` and ensure a new folder named `KCCacheProxy-Linux` is created.
- Go to the `Kancolle-SteamOS-English-Installer/resources` folder.
- Copy `config.json` and paste it into the `KCCacheProxy-Linux` folder.

#### 5. Setup the Game Launcher:
- Return to the `SteamOS-English-Installer` folder.
- Copy `kancolle.sh` and paste it onto your desktop. This file will be used to launch the game in Game Mode.

#### 6. Configure Chrome Extensions:
- In Chrome (Desktop mode), set up KC3 and OmegaProxy.
- When prompted for a port number, use `8089` instead of the default `8081`.

#### 7. Add Game to Steam:
- Open Steam in Desktop mode.
- Add a new game by browsing to your desktop and selecting `Kancolle.sh`.
- Optionally, use graphics from the `Kancolle-SteamOS-English-Installer/images` folder to customize the game's appearance in Game Mode.

#### 8. Controller Layout:
- You may find my controller profile useful. It's essentially the default browser layout with F11 and F12 bound to the bumpers.

### Troubleshooting
![Equipment_Full_Emergency_Repair_Personnel](https://user-images.githubusercontent.com/1831659/175792852-5384dadc-218f-4b01-a248-92d6ba940f35.png)
#### Set Correct Permissions for proxy-linux:
##### If you encounter an issue where launching `Kancolle.sh` results in a terminal error about `proxy-linux` not being found, follow these steps:
- Navigate to the `KCCacheProxy-linux` folder in the terminal:
  ```
  cd /home/deck/KCCP/KCCacheProxy-linux/
  ```
- Give `proxy-linux` the executable flag:
  ```
  chmod +x proxy-linux
  ```

#### Additional Support
For further assistance, join Oradimi's [English Patch Discord server.](https://discord.gg/krMeMKB)




