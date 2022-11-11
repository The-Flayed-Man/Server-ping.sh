#!/bin/bash
   echo "Enter the hostname or ipaddress:"
   read h
   ping -c4 $h
   if [ $? != 0 ]
   then
   sleep 2
   ping -c4 $h
   if [ $? != 0 ]
   then    
   sleep 2
   ping -c4 $h
   if [ $? != 0 ]
   then    
   echo "Host $h is not pinging and its not reachable"
   else
   echo "Host is pinging"
   fi
   fi
   fi 
