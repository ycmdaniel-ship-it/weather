#!/usr/bin/env bash
set -e
mkdir -p icons
BASE="https://www.hko.gov.hk/tc/wxinfo/dailywx/images"
for f in vhot.gif raina.gif rainr.gif rainb.gif tc1.gif tc3.gif tc8se.gif tc8sw.gif tc8ne.gif tc8nw.gif tc9.gif tc10.gif ts.gif ntfl.gif landslip.gif cold.gif sms.gif frost.gif fire_r.gif fire_y.gif tsunami.gif; do
  echo "Downloading $f"
  curl -L --fail "$BASE/$f" -o "icons/$f"
done
