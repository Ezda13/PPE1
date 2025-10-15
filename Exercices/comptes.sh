
echo "argument donné: $1"

CHEMIN=$1

echo "Nombre de lieux en 2016"
cat cat 2016/*/*.ann | grep Location | wc -1 

echo "Nombre de lieux en 2017"
cat cat 2017/*/*.ann | grep Location | wc -1 

echo "Nombre de lieux en 2018"
cat cat 2018/*/*.ann | grep Location | wc -1 
