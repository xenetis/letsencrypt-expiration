# Letsencrypt Expiration

Due to letsencrypt DST Root CA X3 Expiration on September 2021, this script allow you to update DST_Root_CA_X3 and ISRG_Root_X1 on your Debian 8 and 9 (Jessie and Stretch) not necessary for Debian 10 Buster

Debian 8 Jessie and debian 9 Stretch, just run :
````bash
wget -O - https://raw.githubusercontent.com/xenetis/letsencrypt-expiration/main/letsencrypt-expiration.sh | bash
````

Debian 10 Buster and debian 11 bullseye : 
`````bash
apt-get install ca-certificates -y
`````
