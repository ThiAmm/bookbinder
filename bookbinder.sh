#!/bin/bash
for filename in $1/*.pdf; 
do
  mv $filename "${filename/.pdf/_bookbinded.pdf}"
done
