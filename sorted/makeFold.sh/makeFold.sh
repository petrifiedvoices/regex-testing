

for prefix in $(ls -1 | cut -d'_' -f1 | sort)
do	
	mkdir -p $prefix | find . -name "${prefix%}_*.jpg" | mv . /"${prefix%}" ;

done



