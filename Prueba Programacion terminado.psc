Algoritmo desencriptador
	//Se definen las variables a usar
	
	Definir flag,flag2,flagcierre Como Logico
	Definir palabra,letra,verificador,continuar Como Caracter
	Definir cantidad,i,long,j,k Como Entero
	//Se define un arreglo con dimension 27 para usarlo de abecedario
	Dimension abecedario[27]
	flag <- Falso
	flag2 <- Verdadero
	flagcierre <- Verdadero
	//Se le dan posicion a las letras
	abecedario[1] <- ' '
	abecedario[2] <- 'A'
	abecedario[3] <- 'B'
	abecedario[4] <- 'C'
	abecedario[5] <- 'D'
	abecedario[6] <- 'E'
	abecedario[7] <- 'F'
	abecedario[8] <- 'G'
	abecedario[9] <- 'H'
	abecedario[10] <- 'I'
	abecedario[11] <- 'J'
	abecedario[12] <- 'K'
	abecedario[13] <- 'L'
	abecedario[14] <- 'M'
	abecedario[15] <- 'N'
	abecedario[16] <- 'O'
	abecedario[17] <- 'P'
	abecedario[18] <- 'Q'
	abecedario[19] <- 'R'
	abecedario[20] <- 'S'
	abecedario[21] <- 'T'
	abecedario[22] <- 'U'
	abecedario[23] <- 'V'
	abecedario[24] <- 'W'
	abecedario[25] <- 'X'
	abecedario[26] <- 'Y'
	abecedario[27] <- 'Z'
	
	
	Mientras flag=Falso Hacer
		Escribir 'Ingrese la cantidad de lineas a desencriptar entre 3-10'
		long <- 0
		cantidad <- 0
		Leer cantidad
		//se comprueba que la cantidad de lineas sea entre 3 a 10 
		Si 2<cantidad Y cantidad<=10 Entonces
			flag <- Verdadero
			Mientras flag=Verdadero Hacer
				Escribir 'Forma de desencriptacion'
				Leer verificador // Pide palabra verificadora o inicial 
				verificadorm <- Mayusculas(verificador) // se pasa todo a mayuscula
				Si 'KXOIFRORRU'==verificadorm O 'K'=verificadorm Entonces
					Escribir 'forma 1'
					Para i<-1 Hasta cantidad Hacer
						Escribir 'ingrese la linea a descifrar ',i //se recorren todas las lineas a desencriptar
						Leer palabra // se pide ingresar la palabra a descifrar
						flag2 <- Verdadero
						mayuscula <- Mayusculas(palabra) //se  pasa la palabra a mayuscula
						long <- Longitud(mayuscula)
						Si long>60 Entonces //se comprueba que la longitud de las lineas no sea mas de 60
							Escribir 'no se pueden desencriptar lineas mayores a 60 caracteres'
						FinSi
						Mientras long<=60 Y flag2=Verdadero Hacer //se comprueba que la longitud de las lineas no sea mas de 60
							Para j<-1 Hasta long Hacer
								letra <- Subcadena(mayuscula,j,j)
								Para k<-1 Hasta 27 Hacer //recorre todo el abecedario
									Si abecedario[k]==letra Y k>6 Entonces 
										Escribir abecedario[k-6],' ' Sin Saltar  //el desplazamiento es de 6 por lo cual lo que se ingresa debe restarse 6
									FinSi
									Si letra=abecedario[k] Y k<=6 Entonces
										Escribir abecedario[21+k],' ' Sin Saltar 
									FinSi
								FinPara
							FinPara
							flag2 <- Falso
							Escribir ' '
							flag <- Falso
						FinMientras
					FinPara
				FinSi
				
				
				
				
				Si 'OASMJVSVVY'==verificadorm O 'O'==verificadorm Entonces
					Escribir 'forma 2'
					Para i<-1 Hasta cantidad Hacer
						Escribir 'ingrese la linea a descifrar ',i//se recorren todas las lineas a desencriptar
						Leer palabra// se pide ingresar la palabra a descifrar
						flag2 <- Verdadero
						mayuscula <- Mayusculas(palabra)//se  pasa la palabra a mayuscula
						long <- Longitud(mayuscula)
						Si long>60 Entonces //se comprueba que la longitud de las lineas no sea mas de 60
							Escribir 'no se pueden desencriptar lineas mayores a 60 caracteres'
						FinSi
						Mientras long<=60 Y flag2=Verdadero Hacer  //se comprueba que la longitud de las lineas no sea mas de 60
							Para j<-1 Hasta long Hacer
								letra <- Subcadena(mayuscula,j,j)
								Para k<-1 Hasta 27 Hacer
									Si abecedario[k]==letra Y k>10 Entonces
										Escribir abecedario[k-10],' ' Sin Saltar   //el desplazamiento es de 10 por lo cual lo que se ingresa debe restarse 10
									FinSi
									Si letra=abecedario[k] Y k<=10 Entonces
										Escribir abecedario[17+k],' ' Sin Saltar
									FinSi
								FinPara
							FinPara
							flag2 <- Falso
							Escribir ' '
							flag <- Falso
						FinMientras
					FinPara
				FinSi
				
				
				
				Si 'BOF XIFIIL'==verificadorm O 'B'==verificadorm Entonces
					Escribir 'forma 3'
					Para i<-1 Hasta cantidad Hacer
						Escribir 'ingrese la linea a descifrar ',i//se recorren todas las lineas a desencriptar
						Leer palabra// se pide ingresar la palabra a descifrar
						flag2 <- Verdadero
						mayuscula <- Mayusculas(palabra)//se  pasa la palabra a mayuscula
						long <- Longitud(mayuscula)
						Si long>60 Entonces //se comprueba que la longitud de las lineas no sea mas de 60
							Escribir 'no se pueden desencriptar lineas mayores a 60 caracteres'
						FinSi
						Mientras long<=60 Y flag2=Verdadero Hacer  //se comprueba que la longitud de las lineas no sea mas de 60
							Para j<-1 Hasta long Hacer
								letra <- Subcadena(mayuscula,j,j)
								Para k<-1 Hasta 27 Hacer
									Si abecedario[k]==letra Y k<=24 Entonces
										Escribir abecedario[k+3],' ' Sin Saltar   //el desplazamiento es de 3 por lo cual lo que se ingresa debe sumarse 3
									FinSi
									Si letra=abecedario[k] Y k>24 Entonces
										Escribir abecedario[k-24],' ' Sin Saltar
									FinSi
								FinPara
							FinPara
							flag2 <- Falso
							Escribir ' '
							flag <- Falso
						FinMientras
					FinPara
				FinSi
				
				
				Si ' MDYVGDGGJ'==verificadorm O ' '==verificadorm Entonces
					Escribir 'forma 4'
					Para i<-1 Hasta cantidad Hacer
						Escribir 'ingrese la linea a descifrar ',i//se recorren todas las lineas a desencriptar
						Leer palabra// se pide ingresar la palabra a descifrar
						flag2 <- Verdadero
						mayuscula <- Mayusculas(palabra)//se  pasa la palabra a mayuscula
						long <- Longitud(mayuscula)
						Si long>60 Entonces  //se comprueba que la longitud de las lineas no sea mas de 60
							Escribir 'no se pueden desencriptar lineas mayores a 60 caracteres'
						FinSi
						Mientras long<=60 Y flag2=Verdadero Hacer  //se comprueba que la longitud de las lineas no sea mas de 60
							Para j<-1 Hasta long Hacer
								letra <- Subcadena(mayuscula,j,j)
								Para k<-1 Hasta 27 Hacer
									Si abecedario[k]==letra Y k<=22 Entonces
										Escribir abecedario[k+5],' ' Sin Saltar   //el desplazamiento es de 5 por lo cual lo que se ingresa debe sumarse 5
									FinSi
									Si letra=abecedario[k] Y k>22 Entonces
										Escribir abecedario[k-22],' ' Sin Saltar
									FinSi
								FinPara
							FinPara
							flag2 <- Falso
							Escribir ' '
							flag <- Falso
						FinMientras
					FinPara
				FinSi
				
				
				
			FinMientras
		SiNo
			flag <- Falso //esto pasa cuando se ingresan lineas fuera de rango entre 3-10
			Escribir 'Entre 3-10 '
		FinSi
	FinMientras
FinAlgoritmo
