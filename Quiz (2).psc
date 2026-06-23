Algoritmo SistemaTicketsSoporte
    // Definimos las variables que usaremos en todo el programa. MAX_TICKETS es una constante que fija el límite de tickets que podemos registrar (100), para evitar que los arreglos se desborden. opcion guarda la elección del usuario en el menú principal. totalTickets lleva la cuenta de cuántos tickets se han registrado hasta el momento, y empieza en 0 porque aún no hay ninguno. i es un contador que usaremos para recorrer los arreglos en los bucles, por ejemplo al mostrar la lista de tickets.
    Definir MAX_TICKETS, opcion, totalTickets, i Como Entero
    MAX_TICKETS <- 100
	
    // Creamos cuatro arreglos (listas) para guardar la información de cada ticket. Cada arreglo tiene capacidad para MAX_TICKETS elementos (100). nombresUsuario guarda el nombre de la persona que reporta el problema (texto). categorias guarda el tipo de problema (Hardware, Software o Red). numerosTicket guarda el número consecutivo asignado a cada ticket. estados guarda el estado actual del ticket, que al crearse siempre es "Abierto". Cada posición en los arreglos (1, 2, 3, ...) corresponde al mismo ticket, es decir, el ticket en la posición 1 tiene su nombre en nombresUsuario[1], su categoría en categorias[1], etc.
    Dimension nombresUsuario[MAX_TICKETS], categorias[MAX_TICKETS], numerosTicket[MAX_TICKETS], estados[MAX_TICKETS]
	
    // Iniciamos totalTickets en 0 porque todavía no hemos registrado ningún ticket. A medida que se agreguen tickets, esta variable aumentará y también nos servirá como índice para saber en qué posición del arreglo debemos guardar el siguiente ticket.
    totalTickets <- 0
	
    // El menú principal debe mostrarse al menos una vez y repetirse hasta que el usuario decida salir. Para eso usamos un bucle "Repetir - Hasta Que", que ejecuta el bloque de código y luego verifica la condición al final. Si la condición es falsa, se repite; si es verdadera, termina. La condición de salida será cuando opcion sea igual a 3 (la opción de Salir).
    Repetir
        // Limpiamos la pantalla para que el menú se vea limpio y ordenado, sin residuos de ejecuciones anteriores. Esto mejora la experiencia del usuario.
        Limpiar Pantalla
		
        // Mostramos el menú con las opciones disponibles. Usamos Escribir para imprimir líneas de texto que forman un recuadro visual. El encabezado y las opciones están numeradas para que el usuario sepa qué número debe ingresar.
        Escribir "========================================"
        Escribir "   SISTEMA DE TICKETS DE SOPORTE"
        Escribir "========================================"
        Escribir "1. Registrar nueva incidencia"
        Escribir "2. Mostrar todos los tickets"
        Escribir "3. Salir"
        Escribir "========================================"
        Escribir "Seleccione una opción (1-3): "
        Leer opcion
		
        // La estructura "Según" evalúa el valor de la variable opcion y ejecuta el bloque de código correspondiente. Es como un interruptor que elige un camino según el número que haya ingresado el usuario. Si opcion es 1, registra un ticket; si es 2, muestra el listado; si es 3, sale; y si es cualquier otro número, muestra un mensaje de error.
        Segun opcion Hacer
            1: // Caso para registrar un nuevo ticket
                // Primero verificamos si hay espacio disponible en los arreglos. Si totalTickets (la cantidad actual) es menor que MAX_TICKETS (el límite), entonces podemos agregar uno más. Si no, mostramos un mensaje de error.
                Si totalTickets < MAX_TICKETS Entonces
                    // Aumentamos totalTickets en 1 para que apunte a la siguiente posición libre del arreglo. Por ejemplo, si totalTickets era 0, ahora será 1, y el primer ticket se guardará en la posición 1. Este nuevo valor también será el número de ticket consecutivo.
                    totalTickets <- totalTickets + 1
					
                    // Solicitamos al usuario los datos del nuevo ticket: el nombre del usuario que reporta y la categoría del problema. La categoría se elige mediante un submenú con números (1 para Hardware, 2 para Software, 3 para Red).
                    Escribir "----------------------------------------"
                    Escribir "Registro de nueva incidencia #", totalTickets
                    Escribir "Nombre del usuario: "
                    Leer nombresUsuario[totalTickets]
					
                    Escribir "Categoría del problema:"
                    Escribir "  1. Hardware"
                    Escribir "  2. Software"
                    Escribir "  3. Red"
                    Escribir "Elija una categoría (1-3): "
                    Leer opcionCategoria
					
                    // Convertimos la opción numérica elegida por el usuario a texto para guardarla en el arreglo de categorias. Usamos otro "Según" para asignar el texto correspondiente. Si el usuario ingresa un número inválido (por ejemplo, 4), lo tratamos como "Sin categoría" para que el programa no falle.
                    Segun opcionCategoria Hacer
                        1: categorias[totalTickets] <- "Hardware"
                        2: categorias[totalTickets] <- "Software"
                        3: categorias[totalTickets] <- "Red"
                        DeOtroModo: categorias[totalTickets] <- "Sin categoría"
                    FinSegun
					
                    // Asignamos el número de ticket. Como es consecutivo, usamos el mismo valor de totalTickets. Esto garantiza que el primer ticket sea el 1, el segundo el 2, y así sucesivamente.
                    numerosTicket[totalTickets] <- totalTickets
					
                    // El estado inicial de cualquier ticket nuevo siempre es "Abierto". Esto indica que la incidencia aún no ha sido resuelta.
                    estados[totalTickets] <- "Abierto"
					
                    // Mostramos un mensaje de confirmación para que el usuario sepa que el ticket se registró correctamente. Incluimos el número de ticket y el estado asignado.
                    Escribir "¡Ticket #", totalTickets, " registrado exitosamente!"
                    Escribir "Estado: Abierto"
                Sino
                    // Si totalTickets ya llegó al límite máximo (100), mostramos un mensaje de advertencia y no permitimos registrar más tickets.
                    Escribir "¡Límite de tickets alcanzado! (", MAX_TICKETS, " máximos)"
                FinSi
				
                // Hacemos una pausa con "Esperar Tecla" para que el usuario pueda leer el mensaje antes de que el menú se vuelva a mostrar. Esto evita que la pantalla cambie demasiado rápido.
                Esperar Tecla
				
            2: // Caso para mostrar todos los tickets registrados
                // Limpiamos la pantalla para que el listado se vea sin interferencias del menú anterior.
                Limpiar Pantalla
				
                // Verificamos si hay tickets registrados. Si totalTickets es 0, significa que no hay ningún ticket y mostramos un mensaje informativo.
                Si totalTickets = 0 Entonces
                    Escribir "No hay tickets registrados aún."
                Sino
                    // Si hay tickets, mostramos un encabezado con los títulos de las columnas para que la información se vea ordenada. Los títulos son: Ticket (número), Usuario (nombre), Categoría y Estado.
                    Escribir "========================================"
                    Escribir "   LISTADO DE TICKETS DE SOPORTE"
                    Escribir "========================================"
                    Escribir "Ticket   Usuario          Categoría   Estado"
                    Escribir "----------------------------------------"
					
                    // Usamos un bucle "Para" para recorrer todos los tickets desde 1 hasta totalTickets. En cada vuelta, la variable i toma el valor del número de ticket actual y mostramos los datos guardados en los arreglos en esa posición.
                    Para i <- 1 Hasta totalTickets Con Paso 1 Hacer
                        // Escribimos los datos de cada ticket en una línea. Los separamos con espacios para que se alineen aproximadamente con los títulos. Esto no es perfecto pero es suficiente para un prototipo de consola.
                        Escribir numerosTicket[i], "      ", nombresUsuario[i], "          ", categorias[i], "       ", estados[i]
                    FinPara
					
                    // Al final del listado, mostramos el total de tickets registrados para que el usuario tenga un resumen.
                    Escribir "========================================"
                    Escribir "Total de tickets: ", totalTickets
                FinSi
				
                // Pausamos para que el usuario pueda revisar el listado antes de volver al menú.
                Esperar Tecla
				
            3: // Caso para salir del programa
                // Mostramos un mensaje de despedida y el bucle terminará porque la condición "Hasta Que opcion = 3" se cumplirá.
                Escribir "Saliendo del sistema. ¡Hasta luego!"
				
            DeOtroModo: // Caso para cuando el usuario ingresa un número diferente a 1, 2 o 3
                // Si la opción no es válida, mostramos un mensaje de error y pedimos que intente de nuevo. Luego hacemos una pausa para que el usuario pueda leer el mensaje antes de que el menú se refresque.
                Escribir "Opción inválida. Intente nuevamente."
                Esperar Tecla
        FinSegun
		
		// El bucle se repite indefinidamente hasta que la variable opcion sea igual a 3 (la opción de Salir). En ese momento, la condición se vuelve verdadera y el bucle termina, ejecutando la última línea del programa.
    Hasta Que opcion = 3
	
    // Mensaje final que confirma que el programa ha terminado su ejecución.
    Escribir "Programa finalizado."
FinAlgoritmo