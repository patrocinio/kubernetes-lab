OUT=$(netstat -an | grep :8443)
while [[ -z $OUT ]]
do
 echo Waiting for port 8443 to become available
 sleep 1
 OUT=$(netstat -an | grep :8443) 
done

echo Port 8443 open!