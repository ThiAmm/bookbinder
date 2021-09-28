#!/bin/bash
cd $1
for filename in $1/*.pdf; 
do
  mkdir tmp
  numberofpages=$(pdfinfo $filename | awk '/^Pages:/ {print $2}')
  for i in `seq 1 8 $numberofpages`
  do
      num=$((i + 7))
      if [ "$num" -lt "$numberofpages" ]; then
        j=$num;
      else
	j=$numberofpages;
      fi
      qpdf $filename --pages . $i-$j -- tmp/output_$i-$j.pdf
      pdfbook2 tmp/output_$i-$j.pdf
      rm tmp/output_$i-$j.pdf
  done
  pdfunite tmp/output*.pdf $filename-output.pdf
  rm -rf tmp
done

