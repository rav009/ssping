# ssping
A small tool based on firmware "明月固件" that can list SS servers'IPs and show results of ping for a certain SS server.

## Installation
1. Copy `ssping.sh` to directory `/usr/bin`.
2. Add excute permission: `chmod +x ssping.sh`.
3. Ready to go. Type `./ssping.sh` with parameters to launch.

## Usage
- `ssping.sh -s` Show all SS servers IP stored in the json config files (`/etc/shadowsocks/*_config.json`).
- `ssping.sh -<index>` Ping a certain SS server with selected index (e.g. `ssping.sh -2`). The index presented in the `ssping.sh -s` command.
- `ssping.sh -u <index>` Use a certain SS json config file with selected index. The index presented in the `ssping.sh -s` command.