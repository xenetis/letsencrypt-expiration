#!/usr/bin/env bash

if [[ $(lsb_release -sc) = "jessie" || $(lsb_release -sc) = "stretch" ]]; then
  apt-get install ca-certificates -y
  sed -i -e 's|mozilla/DST_Root_CA_X3.crt|#mozilla/DST_Root_CA_X3.crt|g' /etc/ca-certificates.conf
  sed -i -e 's|mozilla/ISRG_Root_X1.crt|#mozilla/ISRG_Root_X1.crt|g' /etc/ca-certificates.conf
  wget --no-check-certificate https://letsencrypt.org/certs/lets-encrypt-r3.pem -O /usr/local/share/ca-certificates/lets-encrypt-r3.crt
  wget --no-check-certificate https://letsencrypt.org/certs/isrgrootx1.pem -O /usr/local/share/ca-certificates/isrgrootx1.crt
  update-ca-certificates -f
fi
if [[ $(lsb_release -sc) = "buster" ]]; then
  apt-get update --allow-releaseinfo-change -y
  apt-get install ca-certificates -y
fi
