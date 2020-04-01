for thing in $(grep "\d{3,4}*_.jpg");
	do mv $thing . ./$thing;
done