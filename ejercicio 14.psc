Algoritmo ejemplo14
	definir m como entero;
	dimension vnumero[10]
	
	Limpiar pantalla
	
	vnumero[1] <- 20
	vnumero[2] <- 14
	vnumero[3] <- 8
	vnumero[4] <- 0
	vnumero[5] <- 5
	vnumero[6] <- 19
	vnumero[7] <- 4
	vnumero[8] <- 9
	vnumero[9] <- 34
	vnumero[10] <- 23
	
	escribir ""
	escribir "se asigna los numeros..."
	escribir ""
	escribir "presione para continuar..."
	Esperar Tecla
	Limpiar Pantalla
	
	escribir ""
	Para m<-1 hasta 10 con paso 1 Hacer
		escribir "el elemento en la posicion",m," en ",vnumero[m]
	FinPara
	
	escribir""
	escribir"presione para continuar..."
	Esperar Tecla
	Limpiar Pantalla
FinAlgoritmo
