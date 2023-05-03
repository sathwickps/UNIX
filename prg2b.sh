clear
echo "Enter File name:"
read f
if [ -e $f ]
then
	echo "$f is valid file"
else
	echo "$f is invalid file"
	exit
fi
list1=`ls -l | grep -w "$f" | cut -d " " -f 1`
echo "File permission of $f are:$list1"

list2=`ls -l | grep -w "$f" | cut -d " " -f 2`
echo "Hard links of $f is:$list2"

list3=`ls -l | grep -w "$f" | cut -d " " -f 3`
echo "User of $f is:$list3"

list4=`ls -l | grep -w "$f" | cut -d " " -f 4`
echo "Group of $f is:$list4"

list5=`ls -l | tr -s " " " " | grep -w "$f" | cut -d " " -f 5`
echo "Size of $f is:$list5 bytes"

list6=`ls -l | tr -s " " " " | grep -w "$f" | cut -d " " -f 6`
echo "Date of $f:$list6"

list7=`ls -l | tr -s " " " " | grep -w "$f" | cut -d " " -f 7`
echo "Time of $f is:$list7"
