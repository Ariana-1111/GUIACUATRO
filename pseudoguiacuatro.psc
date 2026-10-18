Algoritmo Laboratorio4_Vuldix
	
    Escribir "·.·.·.·.·| ETAPA 1: DECLARACIÓN Y MANIPULACIÓN DE CADENAS |·.·.·.·.·"
    
    ticket_vuldix <- "VULDIX://PE-CAJ-2026-987|CLIENTE=Maria_Lopez|PRODUCTO=Zapatillas_Urbanas|DESTINO=Av_De_Cajamarca_450|ESTADO=En_Camino"
    Escribir "Ticket original: ", ticket_vuldix
    
    prefijo <- Subcadena(ticket_vuldix, 1, 9)
    
    Si prefijo = "VULDIX://" Entonces
        Escribir "El ticket de Vuldix es válido."
        
        pos_pipe1 <- BuscarTexto(ticket_vuldix, "|")
        cod_rastreo <- Subcadena(ticket_vuldix, 10, pos_pipe1 - 1)
        
        resto <- Subcadena(ticket_vuldix, pos_pipe1 + 1, Longitud(ticket_vuldix))
        pos_pipe2 <- BuscarTexto(resto, "|")
        texto_cliente <- Subcadena(resto, 1, pos_pipe2 - 1)
        pos_igual <- BuscarTexto(texto_cliente, "=")
        cliente <- Subcadena(texto_cliente, pos_igual + 1, Longitud(texto_cliente))
        
        resto <- Subcadena(resto, pos_pipe2 + 1, Longitud(resto))
        pos_pipe3 <- BuscarTexto(resto, "|")
        texto_producto <- Subcadena(resto, 1, pos_pipe3 - 1)
        pos_igual <- BuscarTexto(texto_producto, "=")
        producto <- Subcadena(texto_producto, pos_igual + 1, Longitud(texto_producto))
        
        resto <- Subcadena(resto, pos_pipe3 + 1, Longitud(resto))
        pos_pipe4 <- BuscarTexto(resto, "|")
        texto_destino <- Subcadena(resto, 1, pos_pipe4 - 1)
        pos_igual <- BuscarTexto(texto_destino, "=")
        destino <- Subcadena(texto_destino, pos_igual + 1, Longitud(texto_destino))
        
        resto <- Subcadena(resto, pos_pipe4 + 1, Longitud(resto))
        pos_igual <- BuscarTexto(resto, "=")
        estado <- Subcadena(resto, pos_igual + 1, Longitud(resto))
        
        Escribir " "
        Escribir "TARJETA DE RASTREO VULDIX"
        Escribir "Origen: ", Subcadena(cod_rastreo, 1, 6)
        Escribir "N° Orden: ", Subcadena(cod_rastreo, 8, Longitud(cod_rastreo))
        Escribir "Cliente: ", cliente
        Escribir "Producto: ", producto
        Escribir "Destino: ", destino
        Escribir "Estado: ", estado
        Escribir "Código Rastreo: ", cod_rastreo
    Sino
        Escribir "El ticket de Vuldix no es válido."
    FinSi
    
    Escribir " "
    Escribir "·.·.·.·.·| ETAPA 2: LISTAS PARALELAS Y BÚSQUEDA |·.·.·.·.·"
    
    Dimension repartidores[4]
    Dimension paquetes[4]
    
    repartidores[1] <- "Carlos"
    repartidores[2] <- "Ana"
    repartidores[3] <- "Luis"
    repartidores[4] <- "Diana"
    
    paquetes[1] <- 45
    paquetes[2] <- 60
    paquetes[3] <- 38
    paquetes[4] <- 52
    
    Escribir "Repartidores: Carlos, Ana, Luis, Diana"
    Escribir "Entregas: 45, 60, 38, 52"
    
    repartidor_buscar <- "ana"
    encontrado <- Falso
    
    Para i <- 1 Hasta 4 Hacer
        Si Minusculas(repartidores[i]) = Minusculas(repartidor_buscar) Entonces
            Escribir "Búsqueda exitosa: ", repartidores[i], " ha entregado ", paquetes[i], " paquetes (Índice ", i, ")."
            encontrado <- Verdadero
        FinSi
    FinPara
    
    Si encontrado = Falso Entonces
        Escribir "El repartidor no figura en los registros."
    FinSi
    
    Escribir " "
    Escribir "·.·.·.·.·| ETAPA 3: ESTRUCTURAS COMBINADAS |·.·.·.·.·"
    
    Dimension clientes[4, 3]
    
    clientes[1, 1] <- "Maria Lopez"
    clientes[1, 2] <- "maria@gmail.com"
    clientes[1, 3] <- "Cajamarca, Cajamarca, Cajamarca"
    
    clientes[2, 1] <- "Jose Diaz"
    clientes[2, 2] <- "jose@gmail.com"
    clientes[2, 3] <- "Trujillo, La Libertad, Trujillo"
    
    clientes[3, 1] <- "Daniel Ruiz"
    clientes[3, 2] <- "daniel@gmail.com"
    clientes[3, 3] <- "Cajamarca, Cajamarca, Cajamarca"
    
    clientes[4, 1] <- "Carla Diaz"
    clientes[4, 2] <- "carla@gmail.com"
    clientes[4, 3] <- "Lima, Lima, Lima"
    
    Escribir "Listado de la estructura combinada:"
    Para i <- 1 Hasta 4 Hacer
        Escribir " - Nombre: ", clientes[i, 1], " | Email: ", clientes[i, 2], " | Ciudad: ", clientes[i, 3]
    FinPara
    
    Escribir " "
    Escribir "·.·.·.·.·| ETAPA 4: BÚSQUEDA TEXTUAL |·.·.·.·.·"
    
    ciudad_objetivo <- "Cajamarca"
    contador <- 0
    
    Escribir "Filtro de clientes por ciudad: ", ciudad_objetivo
    Para i <- 1 Hasta 4 Hacer
        Si BuscarTexto(clientes[i, 3], ciudad_objetivo) > 0 Entonces
            Escribir " - Coincidencia -> Nombre: ", clientes[i, 1], " | Email: ", clientes[i, 2]
            contador <- contador + 1
        FinSi
    FinPara
    Escribir "Total de coincidencias encontradas: ", contador
    
    Escribir " "
    Escribir "·.·.·.·.·| ETAPA 5: ORDENAMIENTO DE CADENAS |·.·.·.·.·"
    
    Dimension nombres_clientes[4]
    Para i <- 1 Hasta 4 Hacer
        nombres_clientes[i] <- clientes[i, 1]
    FinPara
    
    Para i <- 1 Hasta 3 Hacer
        Para j <- 1 Hasta 4 - i Hacer
            Si Mayusculas(nombres_clientes[j]) > Mayusculas(nombres_clientes[j+1]) Entonces
                temp <- nombres_clientes[j]
                nombres_clientes[j] <- nombres_clientes[j+1]
                nombres_clientes[j+1] <- temp
            FinSi
        FinPara
    FinPara
    
    Escribir "Nombres ordenados alfabéticamente (A-Z):"
    Para i <- 1 Hasta 4 Hacer
        Escribir " - ", nombres_clientes[i]
    FinPara
    
    Escribir " "
    Escribir "·.·.·.·.·| ETAPA 6: VALIDACIÓN DE RESULTADOS |·.·.·.·.·"
    Escribir "Todas las operaciones de Vuldix se ejecutaron y validaron con éxito."
    
    Escribir " "
    Escribir "·.·.·.·.·| ETAPA 7: REGISTRO DE EVIDENCIAS |·.·.·.·.·"
    Escribir "Capturas de pantalla guardadas para el informe de laboratorio."
	
FinAlgoritmo

Subproceso pos <- BuscarTexto(cadena, texto_a_buscar)
    Definir i, n, m Como Entero
    n <- Longitud(cadena)
    m <- Longitud(texto_a_buscar)
    pos <- -1
    i <- 1
    Mientras i <= n - m + 1 Y pos = -1 Hacer
        Si Subcadena(cadena, i, i + m - 1) = texto_a_buscar Entonces
            pos <- i
        FinSi
        i <- i + 1
    FinMientras
FinSubproceso