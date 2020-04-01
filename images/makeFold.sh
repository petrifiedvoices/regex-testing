
#for prefix in $(ls -1 | cut -d'_' -f1 | sort | uniq); #cuts the first 3-4 digits on _ and saves them as variable prefix
#do 
#	mkdir $prefix ; #creates a directory called by variable prefix
#	done

for prefix in $(ls -1 | cut -d'_' -f1 | sort)
do	
	find . -name '$prefix*.jpg' | mkdir -p $prefix | mv '$prefix*.jpg' . /$prefix ;
done

