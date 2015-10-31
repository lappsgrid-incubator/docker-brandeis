#!/bin/bash

SERVER=$1
shift

while [ ! -z "$1" ] ; do
	url=$1
	shift
	file=$(echo $url | sed 's/%23/#/')
	if [ ! -e $file ] ; then
		echo "Downloading $file"
		wget $SERVER/$url
	fi
done