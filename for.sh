isPartTime=1
isFullTime=2
isContractual=3
empRatePrHr=300
workingDays=22
totalSal=0

for (( i=1; i<=workingDays; i++ ))
do	
	
	random=$((RANDOM%4))
	case $random in
        	$isFullTime)
                	empHrs=8
         	 	;;
        	$isPartTime)
        	        empHrs=4
        	        ;;
        	$isContractual)
        	        empHrs=6
        	        ;;
        	*)
        	        empHrs=0
                	;;
	esac
	salary=$(($empHrs*$empRatePrHr));
	totalSal=$(($salary+$totalSal))
	echo "$i day salary is $salary"
done
echo "Total salary is $totalSal"
