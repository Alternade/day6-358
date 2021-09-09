isPartTime=1;
isFullTime=2;
maxHrsMonths=160;
maxWorkDay=25;
empRateHr=200;

totalEmpHr=0;
totalWorkDays=0;

function getWorkingHours() {
	
	case $1 in
		$isFullTime)
			
			workHours=8
			;;
		$isPartTime)	
			
			workHours=4
			;;
		*)
			workHours=0
			;;
	esac
	echo $workHours;
}

while [[ $totalEmpHr -lt $maxHrsMonths && $totalWorkDays -lt $maxWorkDay ]]
do
	((totalWorkDays++));
	workHours="$( getWorkingHours $((RANDOM%3)) )";
	echo $workHours "Hours on day $totalWorkDays"
	totalEmpHr=$(($totalEmpHr+$workHours));
	echo "Total working hours fo moth is $totalEmpHr"
done

totalSalary=$(($totalEmpHr*$empRateHr));
echo $totalSalary;

