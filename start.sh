#!/bin/sh

basedir=`dirname $0`
mosca=$basedir/node_modules/.bin/mosca
pino=$basedir/node_modules/.bin/pino
config=$basedir/mosca-config.js

$mosca --http-port 9000 --http-static $basedir --http-bundle -c $config --verbose | $pino
