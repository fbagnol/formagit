#!/bin/bash
nomFichier='liste.txt'


for ligne in `cat $nomFichier`; do
  result=`grep $ligne /var/log/proftpd/xferlog.0 | wc -l`
  echo $ligne    $result
done
