
for prefix in $(ls -1 | cut -d'_' -f1 | sort | uniq); 
do 
	mkdir $prefix | mv -v $prefix . ./$prefix
done


