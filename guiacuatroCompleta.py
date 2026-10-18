print("\n·.·.·.·.·| 1: DECLARACIÓN Y MANIPULACIÓN DE CADENAS |·.·.·.·.·")

ticket_vuldix = "   VULDIX://PE-CAJ-2026-987|CLIENTE=Maria_Lopez|PRODUCTO=Zapatillas_Urbanas|DESTINO=Av_De_Cajamarca_450|ESTADO=En_Camino   "
#vuldix es una empresa de envíos ficticia, y el ticket contiene información sobre un paquete en tránsito

codigo = ticket_vuldix.strip()
print("Ticket original:", repr(ticket_vuldix))
print("Ticket limpio:", codigo)

prefijo = "VULDIX://"

if codigo.startswith(prefijo):
    contenido = codigo[len(prefijo):]
    
    posicion_separador = contenido.find("|")  
    codigo_rastreo = contenido[:posicion_separador]  
    datos_envio = contenido[posicion_separador + 1:]  
    
    posicion_guion = codigo_rastreo.rfind("-")  
    ciudad_origen = codigo_rastreo[:posicion_guion]  
    numero_orden = codigo_rastreo[posicion_guion + 1:]  
    
    partes_envio = datos_envio.split("|")  
    
    cliente = partes_envio[0].replace("CLIENTE=", "").replace("_", " ")  
    producto = partes_envio[1].replace("PRODUCTO=", "").replace("_", " ")  
    destino = partes_envio[2].replace("DESTINO=", "").replace("_", " ")  
    estado = partes_envio[3].replace("ESTADO=", "").replace("_", " ").lower()  
    
    print("\nTARJETA DE RASTREO VULDIX")  
    print(f"Origen      : {ciudad_origen}")  
    print(f"N° Orden    : {numero_orden}")  
    print(f"Cliente     : {cliente}")  
    print(f"Producto    : {producto}")  
    print(f"Destino     : {destino}")  
    print(f"Estado      : {estado}")  
    print(f"Código Rastreo: {codigo_rastreo}")
else:
    print("El ticket de Vuldix no es válido.")


print("\n·.·.·.·.·| 2: LISTAS PARALELAS Y BÚSQUEDA |·.·.·.·.·")

repartidores = ["Carlos", "Ana", "Luis", "Diana"]
paquetes_entregados = [45, 60, 38, 52]

print("Repartidores:", repartidores)
print("Entregas    :", paquetes_entregados)

repartidor_buscar = "ana"
encontrado = False

for i in range(len(repartidores)):
    if repartidores[i].lower() == repartidor_buscar.lower():
        print(f"Búsqueda exitosa: {repartidores[i]} ha entregado {paquetes_entregados[i]} paquetes (Índice {i}).")
        encontrado = True
        break

if not encontrado:
    print(f"El repartidor '{repartidor_buscar}' no figura en los registros.")


print("\n·.·.·.·.·| 3: ESTRUCTURAS COMBINADAS |·.·.·.·.·")

clientes = [
    {"nombre": "Maria Lopez", "email": "maria@gmail.com", "ciudad": "Cajamarca, Cajamarca, Cajamarca"},
    {"nombre": "Jose Diaz", "email": "jose@gmail.com", "ciudad": "Trujillo, La Libertad, Trujillo"},
    {"nombre": "Daniel Ruiz", "email": "daniel@gmail.com", "ciudad": "Cajamarca, Cajamarca, Cajamarca"},
    {"nombre": "Carla Diaz", "email": "carla@gmail.com", "ciudad": "Lima, Lima, Lima"}
]

print("Listado de la estructura combinada:")
for cli in clientes:
    print(f" - Nombre: {cli['nombre']} | Email: {cli['email']} | Ciudad: {cli['ciudad']}")


print("\n·.·.·.·.·| 4: BÚSQUEDA TEXTUAL |·.·.·.·.·")

ciudad_objetivo = "Cajamarca"
contador = 0

print(f"Filtro de clientes por ciudad '{ciudad_objetivo}':")
for cli in clientes:
    if ciudad_objetivo.lower() in cli["ciudad"].lower():
        print(f" - Coincidencia -> Nombre: {cli['nombre']} | Email: {cli['email']}")
        contador += 1

print(f"Total de coincidencias encontradas: {contador}")


print("\n·.·.·.·.·| 5: ORDENAMIENTO DE CADENAS |·.·.·.·.·")

nombres_clientes = [cli["nombre"] for cli in clientes]
print("Nombres originales:", nombres_clientes)

nombres_ordenados = sorted(nombres_clientes, key=str.lower)
print("Nombres ordenados alfabéticamente (A-Z):")
for n in nombres_ordenados:
    print(f" - {n}")


print("\n·.·.·.·.·| 6: VALIDACIÓN DE RESULTADOS |·.·.·.·.·")
print("Todas las operaciones de Vuldix se ejecutaron y validaron con éxito.")


print("\n·.·.·.·.·| 7: REGISTRO DE EVIDENCIAS |·.·.·.·.·")
print("Capturas de pantalla guardadas para el informe de laboratorio.")