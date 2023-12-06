#!/bin/bash
echo "Bienvenido" 
echo "Elige una opcion de este menu:"
opcion=""
while true
do
echo "1 -Ejecutar un hola mundo :c"
echo "2 -Abrir el hola mundo con variables :/" 
echo "3 -Crear un arbol de direcciones :D"
echo "4 -Salir XD"
echo "5 -Abri script variables"
echo "6 -Abri script arrays"
echo "7 -Abri script arrays otros usos"
echo "8 -Abri script aritmeticas"
echo "9 -Abri script logicas"
echo "10 -Abri script condicionales"
echo "11 -Abri script ficheros"
echo "12 -Abri script case"
echo "13 -Abri script iteraciones"
echo "14 -Abri script while"
echo "15 -Abri script until"
echo "16 -Abri script select"
echo "17 -Abri script funciones"
echo "18 -Abri script librerias"
echo "19 -Abri script señales"
echo "20 -Abri script colores"
echo -n "Escribe el numero de la opcion que deseas: "
read opcion 
	case ${opcion} in
	1)
		echo "----------------------------------"
		echo "opcion 1 ha sido ejecutada con exito"
		echo "-----------------------------------"
		bash actividad1/seis/holamundo.sh
	;;
	2)
	echo "-------------------------------------"
	echo "opcion 2 ha sido ejecutado con exito"
	echo "-------------------------------------"
	bash actividad1/seis/holanombre.sh
	;;
	3)
	echo "----------------------------"
	echo "Se ha creado el arbol de direcciones"
	echo "----------------------------"
	bash crear_arbol.sh
	echo "El programa ha sido detenido"
	echo "D: D: D: D: D:"
	;;
	4)
	echo "El programa ha sido detenido" 
	echo "D: D: D: D: D:" 
	break
	;;
	5)
	echo "--------------------------"
	echo "abriendo..."
	bash variables.sh
	echo "--------------------------"
	;;
	6)
	echo "--------------------------"
	echo "abriendo..."
	bash arrays.sh
	echo "--------------------------"
	;;
	7)
	echo "--------------------------"
	echo "abriendo..."
	bash arraysotrouso.sh
	echo "--------------------------"
	;;
	8)
	echo "--------------------------"
	echo "abriendo..."
	bash aritmeticas.sh
	echo "--------------------------"
	;;
	9)
	echo "--------------------------"
	echo "abriendo..."
	bash logicas.sh
	echo "--------------------------"
	;;
	10)
	echo "--------------------------"
	echo "abriendo..."
	bash condicionales.sh
	echo "--------------------------"
	;;
	11)
	echo "--------------------------"
	echo "abriendo..."
	bash ficheros.sh
	echo "--------------------------"
	;;
	12)
	echo "--------------------------"
	echo "abriendo..."
	bash case.sh
	echo "--------------------------"
	;;
	13)
	echo "--------------------------"
	echo "abriendo..."
	bash interacciones.sh
	echo "--------------------------"
	;;
	14)
	echo "--------------------------"
	echo "abriendo..."
	bash while.sh
	echo "--------------------------"
	;;
	15)
	echo "--------------------------"
	echo "abriendo..."
	bash until.sh
	echo "--------------------------"
	;;
	16)
	echo "--------------------------"
	echo "abriendo..."
	bash select.sh
	echo "--------------------------"
	;;
	17)
	echo "--------------------------"
	echo "abriendo..."
	bash funciones.sh
	echo "--------------------------"
	;;
	18)
	echo "--------------------------"
	echo "abriendo..."
	bash librerias.sh
	echo "--------------------------"
	;;
	19)
	echo "--------------------------"
	echo "abriendo..."
	bash senales.sh
	echo "--------------------------"
	;;
	20)
	echo "--------------------------"
	echo "abriendo..."
	bash colores.sh
	echo "--------------------------"
	;;
	*) 
	echo "_____opcion no valida."
	esac
	
done
