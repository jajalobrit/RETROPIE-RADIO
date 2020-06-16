#!/usr/bin/python
import subprocess
import re
import sys
#consegue pegar titulo da musica de uma stream de radio
url = 'http://strm112.1.fm/back280s_mobile_mp3'

# Mods and chiptunes tunes often have too high stereo separation, soften it with
# panning:
p = subprocess.Popen(['mplayer', '-softvol', '-af', 'volume=-10', 'volnorm=2:0.50', url],
                     stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                     bufsize=1)

for line in p.stdout:
    if line.startswith('ICY Info:'):
        info = line.split(':', 1)[1].strip()
        attrs = dict(re.findall("(\w+)='([^<]*)'", info))
        title = attrs.get('StreamTitle')
        print(title.upper())
        subprocess.Popen(['/usr/local/bin/RADIO/HA.sh'])
        sys.stdout.flush()
