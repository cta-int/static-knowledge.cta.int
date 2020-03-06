find . -type f -name '*.pdf' | while read FILE ; do
    newfile="$(echo ${FILE} |sed -e 's/%2B/+/')" ;
    
    mv "${FILE}" "${newfile}" ;
done 
