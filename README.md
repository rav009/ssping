# ssping
A small tool based on the firmware "明月固件" that can list SS servers'IPs and show results of ping for a certain SS server.

## Installation:
1. Copy the file "ssping" into directory "/usr/bin/".
2. Add excute permission to the file(e.g. chmod +x ss-switch).
3. Now you can type "ss-switch" in the command line to use this tool.

## Usage:
- Use "ssping -s" to show all SS servers IP stored in the json config files(/etc/shadowsocks/*_config.json).
- Use "ssping -`<index>`" to ping a certain SS server(e.g. ssping -2).The argument is the index presented in the "ssping -s" command.
- Use "ssping -u `<index>`" to use a certain SS json config file.The argument is the index presented in the "ssping -s" command.
