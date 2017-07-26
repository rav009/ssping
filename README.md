# ssping
- **ssping** is a tool that works on firmware [明月固件](https://www.myopenwrt.org/).
- **ssping** can list SS server IP addresses and ping a selected SS server.

## Installation
1. Copy `ssping.sh` to directory `/usr/bin`.
2. Add excution permission: `chmod +x ssping.sh`.
3. Ready to go. Type `./ssping.sh` with parameters to launch.

## Usage
- `ssping.sh -s` Show all SS servers IP stored in the json config files (`/etc/shadowsocks/*_config.json`).
- `ssping.sh -<index>` Ping a certain SS server with selected index (e.g. `ssping.sh -2`). The index is presented in `ssping.sh -s` command.
- `ssping.sh -u <index>` Use a certain SS json config file with selected index. The index is presented in `ssping.sh -s` command.