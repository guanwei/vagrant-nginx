#!/usr/bin/env bash

#Required
commonname=example.com

#Change to your company details
country=CN
state=Shanghai
locality=Shanghai
organization=example.com
organizationalunit=example.com
email=admin@example.com

echo "Generating key and certificate..."
openssl req -x509 -nodes -days 36500 -newkey rsa:2048 -keyout nginx.key -out nginx.crt -subj "/C=$country/ST=$state/L=$locality/O=$organization/OU=$organizationalunit/CN=$commonname/emailAddress=$email"