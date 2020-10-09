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
   # add use case statements to  code
   isPartTime=1;
   isFullTime=2;
   empRatePerHr=20;
   empCheck=$(( RANDOM%3 ));

   case $empCheck in 
	$isFullTime)
		empHrs=8;;
	$isPartTime)
	        empHrs=4;;
               	*)
		empHrs=0;;
   esac
   salary=$(( $empHrs*$empRatePerHr ));


