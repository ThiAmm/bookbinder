echo "Convert all txt-files in $1 to pdf"
for filename in $1/*.txt;
do
	pandoc $filename -o "${filename%%.*}".pdf;
done

