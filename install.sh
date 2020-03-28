#!/bin/bash
set -euxo pipefail
install -o root -g root -m 755 -d /etc/heymon
install -o root -g root -m 1777 -d /var/log/heymon
install -o root -g root -m 700 heymon /usr/sbin/heymon
install -o root -g root -m 755 hm /usr/bin/hm
install -o root -g root -m 755 heymon.init /etc/init.d/heymon
install -o root -g root -m 644 heymon.logrotate /etc/logrotate.d/heymon
