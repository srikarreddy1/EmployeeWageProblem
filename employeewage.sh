#!/bin/bash -x
 
   echo "welcome to employee wage proble solution"
   #employee is present or absent uc
   isPresent=1;
   randomCheck=$(( RANDOM%2 ));
   if [[ $isPresent -eq $randomCheck ]]
   then
       echo "Employee is Present";
   else
       echo "Employee is Abscent";
   fi
   #calculate daily employeewage UC
   isPresent=1;
   randomCheck=$(( RANDOM%2 ));
   if [[ $isPresent -eq $randomCheck ]];
	 then
           empRatePerHr=20;
           empHrs=8;
           salary=$(($empHrs*$empRatePerHr));
 	 else
       salary=0;
    fi


