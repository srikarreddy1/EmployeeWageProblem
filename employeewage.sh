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

   
   #store the daily wage along with the total wage
   # CONSTANTS FOR THE PROGRAM
   IS_PART_TIME=1;
   IS_FULL_TIME=2;
   MAX_HRS_IN_MONTH=10;
   EMP_RATE_PER_HR=20;
   NUM_WORKING_DAYS=20;

   # VARIABLES
   totalEmpHrs=0;
   totalWorkingDays=0;

   function getWorkingHours( ) {
     case $1 in
         $IS_FULL_TIME)
            workHrs=8;;
         $IS_PART_TIME)
            workHrs=4;;
         *)
            workHrs=0;;
     esac
     }
 
     while (( $(( $totalEmpHrs < $MAX_HRS_IN_MONTH )) && $(( $totalWorkingDays < $NUM_WORKING_DAYS )) ))
     do
        ((totalWorkingDays++))
     getWorkingHours $((RANDOM%3))
         totalEmpHrs=$(($totalEmpHrs+$workHrs))
         dailyWage[$totalWorkingDays]=$(($workHrs*$EMP_RATE_PER_HR))
     done
         totalEmpHrs=$(($totalEmpHrs*$EMP_RATE_PER_HR))
