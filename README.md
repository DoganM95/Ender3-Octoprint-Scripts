# Ender3-Octoprint

Custom g-code scripts, triggered by events like "on startup", "on print start", "on print pause", etc. in octoprint.  
Specific setup for this configuration/scripts:

- Borosilicate glass bed (explains the somewhat excessive initial heat on first layer)
- Filament sensor (for pause-resume functionality)
- [Bed led's](https://www.thingiverse.com/thing:4845956) (to visualize current printer state, explains `ENC` commands)
- Octoprint Enclosure plugin (provides custom commands, e.g. `ENC`)
