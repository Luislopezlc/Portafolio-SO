#!/bin/bash
echo "Bienvenido" 
echo "Elige una opcion de este menu:"
opcion=""
while true
do
echo "1 -Ejecutar un hola mundo :c"
echo "Z -Abrir el hola mundo con variables :/" 
echo "3 -Crear un arbol de direcciones :D"
echo "4 -Salir XD"
echo -n "Escribe el numero de la opcion que deseas:"
read opcion 
	case ${opcion} in
	1)
		echo "----------------------------------"
		echo "opcion 1 ha sido ejecutada con exito"
		echo "-----------------------------------"
		bash actividad1/seis/holamundo.sh
	2)
	echo "-------------------------------------"
	echo "opcion 2 ha sido ejecutado con exito"
	echo "-------------------------------------"
	bash actividad1/seis/holanombre.sh
	3)
	echo "----------------------------"
	echo "Se ha creado el arbol de direcciones"
	echo "----------------------------"
	bash crear_arbol.sh
	echo "El programa ha sido detenido"
	echo "D: D: D: D: D:"
	4)
	echo "El programa ha sido detenido" 
	echo "D: D: D: D: D:" 
	break
	*) 
	echo "_____opcion no valida."
	esac
done
