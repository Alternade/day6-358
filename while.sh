isParttime=1
isFullTime=2
isContractual=3
empRatePrHr=300
workingDays=22
totalSal=0
i=1
while [ $i -le $workingDays ]
do
        random=$((RANDOM%4))

        case $random in
                $isFullTime)
                        empHrs=8
                        ;;
                $isParttime)
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
	i=$(($i+1))
done
echo $totalSal
         


