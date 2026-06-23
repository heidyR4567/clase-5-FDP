Algoritmo FacturaMiniMarket
    // Definir variables
    Definir numProductos, i Como Entero
    Definir totalPagar Como Real
	
    // Solicitar cantidad de productos diferentes
    Escribir "¿Cuantos productos diferentes lleva?"
    Leer numProductos
	
    // Declarar arreglos para guardar los datos de cada producto
    Dimension nombres[numProductos]
    Dimension cantidades[numProductos]
    Dimension precios[numProductos]
    Dimension subtotales[numProductos]
	
    totalPagar <- 0  
	
    // Bucle 
    Para i <- 1 Hasta numProductos Con Paso 1 Hacer
        Escribir "Producto #", i
        Escribir "Nombre: "
        Leer nombres[i]
        Escribir "Cantidad: "
        Leer cantidades[i]
        Escribir "Precio unitario: "
        Leer precios[i]
		
        // Calcular subtotal 
        subtotales[i] <- cantidades[i] * precios[i]
        totalPagar <- totalPagar + subtotales[i]
    FinPara
	
    Limpiar Pantalla
	
    // Mostrar efactura
    Escribir "FACTURA MINI-MARKET EL AHORRO"
    Escribir "Producto   Cant   Precio   Subtotal"
	
    Para i <- 1 Hasta numProductos Con Paso 1 Hacer
        Escribir nombres[i], "     ", cantidades[i], "     ", precios[i], "     ", subtotales[i]
    FinPara
	
    // Mostrar total a pagar
    Escribir "Total a pagar: $", totalPagar
    Escribir "Gracias por su compra."
FinAlgoritmo