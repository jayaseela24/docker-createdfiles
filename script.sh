#!/bin/bash
I=1
declare -i x=200
while [ $I -lt $x ]
do
echo "Welcome for the ${I} Time...."
sleep 1
I=$(( $I + 1 ))
done
chmod 700 /usr/local/bin/terraform
terraform version
