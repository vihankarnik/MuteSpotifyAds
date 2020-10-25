<font size="18">**Basic Overview**</font>

This batch file mutes spotify whenever an ad plays.
Made for Windows 10
The .vbs file makes the batch file run invisibly.

<font size="18">**How it works**</font>

Whenever Spotify plays an ad, the title of the window changes to either "Advertisement" or "Spotify" depending upon whose ad it is.
By using tasklist we find the apps which have the window title as Advertisement or Spotify, and then mute it using nircmd.
This script runs once every 2 seconds.
If spotify is found to not be running, the script ends.

<font size="18">**Limitations**</font>

It relies on Window titles thus the Spotify window must be kept open at all times.
