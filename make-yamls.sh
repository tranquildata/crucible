#!/bin/sh
#Find all template files
#substitute the volume directory and then emit a yaml file
for tmpl in *.tmpl; do
	echo $tmpl
	VOLDIR=$1 envsubst < $tmpl > ${tmpl/.tmpl/.yaml}
done
