#!/usr/bin/python
import subprocess
import re
import sys
#consegue pegar titulo da musica de uma stream de radio
url = 'http://paris.discovertrance.com:8006/stream'

# Mods and chiptunes tunes often have too high stereo separation, soften it with
# panning:
p = subprocess.Popen(['mplayer', '-af-add', 'pan=2:0.8:0.5:0.5:0.8', url],
                     stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                     bufsize=1)

for line in p.stdout:
    if line.startswith('ICY Info:'):
        info = line.split(':', 1)[1].strip()
        attrs = dict(re.findall("(\w+)='([^<]*)'", info))
        title = attrs.get('StreamTitle')
        print(title.upper())
        sys.stdout.flush()