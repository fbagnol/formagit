#!/bin/bash

for ligne in `cat liste.txt`; do
  result=`grep $ligne /var/log/proftpd/xferlog.0 | wc -l`
  echo $ligne    $result
done
