#!/bin/sh

STATUS=$(nordvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)

if [ "$STATUS" = "Connected" ]; then
  echo "%{A1:nordvpn d:}%{F#7ec1ff}%{F-} $(nordvpn status | grep City | tr -d ' ' | cut -d ':' -f2)%{A}"
else
  echo "%{A1:nordvpn c:}%{F#e27e8d}%{F-} %{F#d95468}No VPN%{F-}%{A}"
fi
