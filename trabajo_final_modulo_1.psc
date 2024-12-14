Algoritmo trabajo_final_modulo_1
	Definir precio_producto, total, cantidad, costo_fijo_envio, peso_producto_unidad Como Entero
	Definir cupon_descuento, iva, descuento Como Real
	Definir cupon Como Caracter
	
	total <- 0
	total_neto <- 0
	cupon_descuento <- 0.10
	iva <- 0.12
	descuento <- 0.05
	costo_fijo_envio <- 10
	peso_producto_unidad <- 3
	arreglo_de_compras <- []
	
	Escribir "Ingrese el precio del producto"
	leer precio_producto
	
	Escribir "Ingrese cantidad a comprar"
	leer cantidad
	
	total <- precio_producto * cantidad
	
	para i desde 0 hasta cantidad Hacer
		si i >= 2 Entonces
			total_neto <- total * (1 - descuento)
		SiNo
			total_neto <- total
		FinSi
	FinPara
	
	Escribir "El total con descuento es: ", total_neto
	
	Escribir "¿Tiene cupon de descuento? (si/no)"
	leer cupon
	
	si cupon = "si" Entonces
		total_con_cupon = total_neto * (1 - cupon_descuento)
	SiNo
		total_con_cupon <- total_neto
	FinSi
	
	Escribir "El total con cupon es: ", total_con_cupon
	
	precio_con_iva = total_con_cupon * (1 + iva)
	Escribir "El precio con iva es: ", precio_con_iva
	
	costo_de_envio <- costo_fijo_envio + (peso_producto_unidad * cantidad)
	Escribir "El costo de envio es: ", costo_de_envio
	
	costo_final_compra <- precio_con_iva + costo_de_envio
	arreglo_de_compras <- costo_final_compra
	Escribir "El precio final de la compra es: ", arreglo_de_compras
	
FinAlgoritmo
	