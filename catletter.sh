#!/bin/sh
#Borro los .output que hubiera 
path=$1
find $path -name "*.output" -type f -delete 2>/dev/null
FILES=$path/*.txt
#Me quedare con la primera letra del fichero, toda la ruta y dos posiciones más
pos=$((${#1}+2))
#Recorro la lista
for f in $FILES
do
#Paso a minusculas y redirigo cat
	firstchar=$(echo $f|cut -c$pos|tr '[:upper:]' '[:lower:]')
  	cat $f >> "$path/$firstchar.output"
done
exit 0
