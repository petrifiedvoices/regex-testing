
#for prefix in $(ls -1 | cut -d'_' -f1 | sort | uniq); #cuts the first 3-4 digits on _ and saves them as variable prefix
#do 
#	mkdir $prefix ; #creates a directory called by variable prefix
#	done

cwd=`pwd`
for prefix in $(ls -1 | cut -d'_' -f1 | sort)
do	
	find . -name "$prefix" | mkdir -p $prefix | mv "$cwd/$prefix"* "$cwd/$prefix/" ; # fixed the mv by following https://unix.stackexchange.com/questions/77007/mv-cannot-stat-no-such-file-or-directory-in-shell-script
done
