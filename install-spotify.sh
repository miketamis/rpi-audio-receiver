#!/bin/sh


PRETTY_HOSTNAME=$(hostnamectl status --pretty)
PRETTY_HOSTNAME=${PRETTY_HOSTNAME:-$(hostname)}

cat <<EOF > /etc/spotifyd.conf
[global]
backend = alsa
mixer = Master
volume-control = softvol # or alsa
device_name = ${PRETTY_HOSTNAME}
bitrate = 320
EOF

