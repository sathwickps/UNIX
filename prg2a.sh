#Validate the user
clear
if [ $# -eq 0 ]
then
    echo "No username "
    echo "Enter atleast one argument"
    exit
fi

cat `/etc/passwd | cut -d \: -f 1` > name.txt
for username in $*
do
    grep -w $username name.txt
    if [ $? -eq 0 ]
    then
        echo "Valid Username"
        echo "Home Directory is:"
        cat `/etc/passwd | grep -w ^$username | cut -d \: -f 6`
    else
        echo "Not Valid Username"
    fi
done
