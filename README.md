# ssping
A small tool based on the firmware "明月固件" that can show results of ping for a certain SS servers.

##Installation:
1. Copy the file "ssping" into directory "/usr/bin/".
2. Add excute permission to the file(e.g. chmod +x ss-switch).
3. Now you can type "ss-switch" in the command line to use this tool.

##Usage:
- Use "ssping -s" to show SS server IP stored in the json config files(/etc/shadowsocks/*_config.json).
- Use "ssping -<number>" to ping a certain SS server.The number is the index presented in the "ssping" -s command.
