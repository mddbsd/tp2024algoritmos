Algoritmo TpEj5
	definir frase, fraseArmada, car como cadena
	definir flagA, flagI, flagU, flagE, flagO como logico
	definir i como entero
	//Inicializamos las banderas correspondientes a cada una de las vocales
	flagA = Verdadero
	flagI = Verdadero
	flagU = Verdadero
	flagE = Verdadero
	flagO = Verdadero
	fraseArmada = ""
	Escribir "Ingrese frase"
	leer frase
	//Comenzamos a recorrer nuestra cadena (frase) desde el primer caracter
	//hasta el final definido por la funcion Longitud().
	para i = 1 hasta Longitud(frase) con paso 1 Hacer
		//Guardamos cada una de las letras de la frase en la variable car
		car = Subcadena(frase, i ,i )
		segun car Hacer
			"a":
				flagA = armaFrase(car, flagA, fraseArmada)
			"i":
				flagI = armaFrase(car, flagI, fraseArmada)
			"u":
				flagU = armaFrase(car, flagU, fraseArmada)
			"e":
				flagE = armaFrase(car, flagE, fraseArmada)
			"o":
				flagO = armaFrase(car, flagO, fraseArmada)
			De Otro Modo:
				//Cuando car sea una consonante, se debe agregar siempre a la fraseArmada
				fraseArmada = fraseArmada + car
		FinSegun
	FinPara
	Escribir fraseArmada
FinAlgoritmo

//Parametros:
//car: el caracter correspondiente a la letra devuelta por la funcion 
//flag: la bandera se utiliza para verificar si es la primra vez que se encuentra la vocal
//fraseArmada: la cadena resultante
//fraseArmada pasa por referencia para que su valor cambie en el algoritmo principal 
Funcion retorno <- armaFrase(car, flag, fraseArmada Por Referencia)
	//Consultamos flag, cuando este parametro es verdadero sabemos
	//que se encontro por primera vez la vocal
	si flag Entonces
		fraseArmada = fraseArmada + car
		//Cambiamos el valor de flag a falso para que la proxima vez que encuentre
		//la vocal, no la agregue a la cadena resultante
		flag = falso
	FinSi
	//retornamos el valor de flag
	retorno = flag
FinFuncion
