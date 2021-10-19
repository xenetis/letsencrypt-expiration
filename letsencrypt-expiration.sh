#!/bin/bash

if [[ $(lsb_release -sc) = "jessie" || $(lsb_release -sc) = "stretch" ]]; then
  apt-get install ca-certificates -y
  sed -i -e 's|mozilla/DST_Root_CA_X3.crt|#mozilla/DST_Root_CA_X3.crt|g' /etc/ca-certificates.conf
  sed -i -e 's|mozilla/ISRG_Root_X1.crt|#mozilla/ISRG_Root_X1.crt|g' /etc/ca-certificates.conf
  wget https://raw.githubusercontent.com/xenetis/letsencrypt-expiration/main/certificates/isrgrootx1.crt -P /usr/local/share/ca-certificates/
  wget https://raw.githubusercontent.com/xenetis/letsencrypt-expiration/main/certificates/lets-encrypt-r3.crt -P /usr/local/share/ca-certificates/
  update-ca-certificates -f
fi
