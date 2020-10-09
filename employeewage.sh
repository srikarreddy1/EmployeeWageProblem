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
   # calculate Wages for a month
   isPartTime=1;
   isFullTime=2;
   totalSalary=0;
   empRatePerHr=20;
   numWorkingDays=20;
   
   for (( day=1; day<=$numWorkingDays; day++ ))
   do

      empCheck=$(( RANDOM%3 ));
         case $empCheck in
                $isFullTime)
                        empHrs=8;;
                $isPartTime)
                        empHrs=4;;
                *)
                        empHrs=0;;
         esac
         salary=$(($empHrs*$empRatePerHr));
    done


