clear
for vueltas in {1..3}
do
	echo " _______        _     __  "
	echo "|__   __|      | |   /_ | "
	echo "   | | ___  ___| |_   | | "
	echo "   | |/ _ \/ __| __|  | | "
	echo "   | |  __/\__ \ |_   | | "
	echo "   |_|\___||___/\__|  |_| "
	echo "                          "                    



	VBoxManage snapshot "Windows7Wolf" restore "test1" && VBoxManage startvm "Windows7Wolf"
	# espera=$((60 + RANDOM % 80))
	minutosdeespera=$((1 + RANDOM % 1))
	segundosdeespera=$(($minutosdeespera * 60))

	echo ""
	echo "Lanzando bot: test1"
	echo "-------------------"
	echo ""

	# for ((i=1; i<=$segundosdeespera; i++)); do echo -ne "Quedan $(($segundosdeespera-$i)) segundos."'\r'; sleep 1; done; echo 
	# sleep $segundosdeespera

	for ((i=1; i<=$segundosdeespera; i++)); do 
	  printf '\rQuedan %d segundos.' $(($segundosdeespera - $i))
	  sleep 1
	done
	printf '\n'

	echo 

	VBoxManage controlvm "Windows7Wolf" poweroff
	for i in {1..30}; do 
	  printf '\rEsperando %d segundos para asegurar el apagado correcto de la máquina.' $((30 - $i))
	  sleep 1
	done
	printf '\rApagado correcto.                                                                    '
	printf '\n'
	echo
	echo
	echo "***********************************************************"
	echo
	echo

done
echo
exit 0