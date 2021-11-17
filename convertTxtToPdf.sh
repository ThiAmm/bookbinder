echo "Convert all txt-files in $1 to pdf"
for filename in $1/*.txt;
do
	pandoc $filename -f markdown+hard_line_breaks -o "${filename%%.*}".pdf;
done

