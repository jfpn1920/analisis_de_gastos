Algoritmo analisis_de_gastos
	Definir opcion, totalGastos Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir descripcion Como Caracter
	Definir categoria Como Caracter
	Definir valor Como Real
	Definir fecha Como Caracter
	Definir metodoPago Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension descripcion[100]
	Dimension categoria[100]
	Dimension valor[100]
	Dimension fecha[100]
	Dimension metodoPago[100]
	Dimension estado[100]
	totalGastos <- 0
	siguienteID <- 1
	//---------------------------------------//
	//--|menu_principal_analisis_de_gastos|--//
	//---------------------------------------//
	Repetir
		Escribir "menu principal analisis de gastos"
		Escribir "1) registrar gasto"
		Escribir "2) editar gasto"
		Escribir "3) eliminar gasto"
		Escribir "4) buscar gasto"
		Escribir "5) listar gastos"
		Escribir "6) ver detalles del gasto"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//---------------------//
			//--|registrar_gasto|--//
			//---------------------//
			1:
				Escribir "registrar gasto"
				id[totalGastos+1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalGastos+1]
				Escribir "ingrese la descripcion del gasto:"
				Leer descripcion[totalGastos+1]
				Escribir "ingrese la categoria:"
				Leer categoria[totalGastos+1]
				Escribir "ingrese el valor:"
				Leer valor[totalGastos+1]
				Escribir "ingrese la fecha:"
				Leer fecha[totalGastos+1]
				Escribir "ingrese el metodo de pago:"
				Leer metodoPago[totalGastos+1]
				Escribir "ingrese el estado:"
				Leer estado[totalGastos+1]
				totalGastos <- totalGastos + 1
				Escribir "gasto registrado correctamente."
			//------------------//
			//--|editar_gasto|--//
			//------------------//
			2:
				Escribir "editar gasto"
				Si totalGastos = 0 Entonces
					Escribir "no hay gastos registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalGastos Hacer
						Escribir id[i], " | ", descripcion[i], " | ", categoria[i], " | ", valor[i], " | ", fecha[i], " | ", metodoPago[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del gasto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalGastos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese la nueva descripcion:"
							Leer descripcion[i]
							Escribir "ingrese la nueva categoria:"
							Leer categoria[i]
							Escribir "ingrese el nuevo valor:"
							Leer valor[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese el nuevo metodo de pago:"
							Leer metodoPago[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "gasto editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un gasto con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|eliminar_gasto|--//
			//--------------------//
			3:
				Escribir "eliminar gasto"
				Si totalGastos = 0 Entonces
					Escribir "no hay gastos registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalGastos Hacer
						Escribir id[i], " | ", descripcion[i], " | ", categoria[i], " | ", valor[i], " | ", fecha[i], " | ", metodoPago[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del gasto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalGastos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalGastos Entonces
								Para j <- i Hasta totalGastos - 1 Hacer
									id[j] <- id[j+1]
									descripcion[j] <- descripcion[j+1]
									categoria[j] <- categoria[j+1]
									valor[j] <- valor[j+1]
									fecha[j] <- fecha[j+1]
									metodoPago[j] <- metodoPago[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalGastos <- totalGastos - 1
							Escribir "gasto eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un gasto con ese id."
					FinSi
				FinSi
			//------------------//
			//--|buscar_gasto|--//
			//------------------//
			4:
				Escribir "buscar gasto"
				Si totalGastos = 0 Entonces
					Escribir "no hay gastos registrados."
				SiNo
					Escribir "ingrese el id del gasto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalGastos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", descripcion[i], " | ", categoria[i], " | ", valor[i], " | ", fecha[i], " | ", metodoPago[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un gasto con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|listar_gastos|--//
			//-------------------//
			5:
				Escribir "listar gastos"
				Si totalGastos = 0 Entonces
					Escribir "no hay gastos registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalGastos Hacer
						Escribir id[i], " | ", descripcion[i], " | ", categoria[i], " | ", valor[i], " | ", fecha[i], " | ", metodoPago[i], " | ", estado[i]
					FinPara
				FinSi
			//----------------------------//
			//--|ver_detalles_del_gasto|--//
			//----------------------------//
			6:
				Escribir "ver detalles del gasto"
				Si totalGastos = 0 Entonces
					Escribir "no hay gastos registrados."
				SiNo
					Escribir "ingrese el id del gasto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalGastos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del gasto"
							Escribir "id: ", id[i]
							Escribir "descripcion: ", descripcion[i]
							Escribir "categoria: ", categoria[i]
							Escribir "valor: ", valor[i]
							Escribir "fecha: ", fecha[i]
							Escribir "metodo de pago: ", metodoPago[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un gasto con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalGastos = 0 Entonces
					Escribir "no hay gastos registrados."
				SiNo
					suma <- 0
					mayor <- valor[1]
					menor <- valor[1]
					Para i <- 1 Hasta totalGastos Hacer
						suma <- suma + valor[i]
						Si valor[i] > mayor Entonces
							mayor <- valor[i]
						FinSi
						Si valor[i] < menor Entonces
							menor <- valor[i]
						FinSi
					FinPara
					promedio <- suma / totalGastos
					Escribir "estadistica general"
					Escribir "total de gastos: ", totalGastos
					Escribir "valor total: ", suma
					Escribir "promedio de gastos: ", promedio
					Escribir "gasto mayor: ", mayor
					Escribir "gasto menor: ", menor
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar analisis de gastos."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo