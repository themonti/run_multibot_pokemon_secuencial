echo "███╗   ███╗██╗██████╗  ██████╗ ██╗  ██╗███████╗███╗   ███╗ ██████╗ ███╗   ██╗███████╗███████╗███████╗███████╗ ██████╗ "
echo "████╗ ████║██║██╔══██╗██╔═══██╗██║ ██╔╝██╔════╝████╗ ████║██╔═══██╗████╗  ██║██╔════╝██╔════╝██╔════╝██╔════╝██╔═══██╗"
echo "██╔████╔██║██║██████╔╝██║   ██║█████╔╝ █████╗  ██╔████╔██║██║   ██║██╔██╗ ██║█████╗  ███████╗█████╗  █████╗  ██║   ██║"
echo "██║╚██╔╝██║██║██╔═══╝ ██║   ██║██╔═██╗ ██╔══╝  ██║╚██╔╝██║██║   ██║██║╚██╗██║██╔══╝  ╚════██║██╔══╝  ██╔══╝  ██║   ██║"
echo "██║ ╚═╝ ██║██║██║     ╚██████╔╝██║  ██╗███████╗██║ ╚═╝ ██║╚██████╔╝██║ ╚████║███████╗███████║██║     ███████╗╚██████╔╝"
echo "╚═╝     ╚═╝╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚══════╝╚═╝     ╚══════╝ ╚═════╝ "
echo ""


VBoxManage snapshot "Windows_7_Ultimate" restore "mipokemonesfeo" && VBoxManage startvm "Windows_7_Ultimate"
minutosdeespera=$((60 + RANDOM % 80))
# minutosdeespera=$((1 + RANDOM % 1))
segundosdeespera=$(($minutosdeespera * 60))

echo ""
echo "Lanzando bot: mipokemonesfeo"
echo "----------------------------"
echo ""

# for ((i=1; i<=$segundosdeespera; i++)); do echo -ne "Quedan $(($segundosdeespera-$i)) segundos."'\r'; sleep 1; done; echo 
# sleep $segundosdeespera

for ((i=1; i<=$segundosdeespera; i++)); do 
  printf '\rQuedan %d segundos.                ' $(($segundosdeespera - $i))
  sleep 1
done
printf '\n'

echo 

VBoxManage controlvm "Windows_7_Ultimate" poweroff
for i in {1..30}; do 
  printf '\rEsperando %d segundos para asegurar el apagado correcto de la máquina.    ' $((30 - $i))
  sleep 1
done
printf '\rApagado correcto.                                                                    '
printf '\n'
echo
echo
echo "***********************************************************"
echo
echo

