#!/bin/bash
SRC=/srv/storage/projects/scripts/sayings

if [ -e ${SRC} ]; then
	pushd ${SRC} > /dev/null
		xsltproc -o waiting.txt waiting.xslt waiting.xml
	popd > /dev/null
fi
