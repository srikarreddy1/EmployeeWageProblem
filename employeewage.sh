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
   #calulate employee wages till the total working days is reached or month is reached
   # CONSTANTS FOR THE PROGRAM
   IS_PART_TIME=1;
   IS_FULL_TIME=2;
   MAX_HRS_IN_MONTH=10;
   EMP_RATE_PER_HR=20;
   NUM_WORKING_DAYS=20;
  
   # VARIABLES
   totalEmpHrs=0;
   totalWorkingDays=0;

   while (( $(( $totalEmpHrs < $MAX_HRS_IN_MONTH )) && $(( $totalWorkingDays < $NUM_WORKING_DAYS )) ))
   do
	((totalWorkingDays++))
 	empCheck=$((RANDOM%3))
	case $empCheck in
		$IS_FULL_TIME)
    		 empHrs=8;;
		$IS_PART_TIME)
        	 empHrs=4;;
 		*)
		 empHrs=0;;
	esac
  	totalEmpHrs=$(($totalEmpHrs+$empHrs))
    done
	totalEmpHrs=$(($totalEmpHrs*$EMP_RATE_PER_HR));


