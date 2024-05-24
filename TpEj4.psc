Algoritmo TpEj4
	definir numeroIngresado como entero
	escribir "Ingrese un numero"
	leer numeroIngresado
	//Ya que la funcion solamente escribe en pantalla
	//no es necesario retornar ningun valor al algoritmo principal
	//por lo tanto, la definimos como SubAlgoritmo 
	escalera(numeroIngresado)
FinAlgoritmo

//Para crear la escalera, tenemos que definir 2 bucles.
//El primer bucle define las filas, el segundo los numeros que se mostraran
//a cada fila
//Recibe como parametro:
//num: El numero ingresado por el usuario
SubAlgoritmo escalera(num)
	definir i, j como entero
	//El primer bucle comienza en 1 hasta el numero que ingreso el usuario
	para i = 1 hasta num con paso 1 Hacer
		//En el segundo bucle, escribimos los numeros desde 1 hasta el valor
		//definido por i (fila)
		para j = 1 hasta i con paso 1 Hacer
			Escribir j Sin Saltar
		FinPara
		//Antes de finalizar el primer bucle, escribimos un salto de linea
		Escribir ""
	FinPara
FinSubAlgoritmo
	