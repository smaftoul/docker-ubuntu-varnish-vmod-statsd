#!/usr/bin/env bash
set -e
set -x

cd /tmp
git clone https://github.com/jib/libvmod-statsd.git
cd libvmod-statsd
git fetch origin pull/10/head:varnish4
git checkout varnish4
./autogen.sh
./configure VARNISHSRC=/usr/include/varnish
make
make install
