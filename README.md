# Trabajo Final Módulo 1

Este es un algoritmo desarrollado en **PSeInt** que realiza el cálculo detallado de una compra de productos, aplicando descuentos, cupones, IVA, y costos de envío. El resultado final incluye el precio total que debe pagar el cliente.

## Funcionalidades

1. **Cálculo del precio total**: Multiplica el precio unitario del producto por la cantidad seleccionada.
2. **Aplicación de descuentos**: Si se compran 3 o más unidades, se aplica un descuento del 5%.
3. **Cupones de descuento**: Si el cliente tiene un cupón de descuento válido, se aplica un descuento adicional del 10%.
4. **IVA**: Se calcula el impuesto al valor agregado (12%) sobre el precio con descuentos.
5. **Costo de envío**: El costo fijo de envío es $10 más $3 por unidad comprada.
6. **Precio final**: Combina todos los cálculos para mostrar el precio total de la compra, incluyendo los costos adicionales.

## Variables utilizadas

- **Enteros**:
  - `precio_producto`: Precio unitario del producto.
  - `cantidad`: Número de unidades compradas.
  - `costo_fijo_envio`: Costo fijo del envío.
  - `peso_producto_unidad`: Peso por unidad de producto.
- **Reales**:
  - `cupon_descuento`: Descuento por cupón (10%).
  - `iva`: Impuesto al valor agregado (12%).
  - `descuento`: Descuento por comprar 3 o más unidades (5%).
- **Caracter**:
  - `cupon`: Indica si el cliente tiene un cupón ("si" o "no").

## Flujo del algoritmo

1. Solicitar al usuario:
   - Precio del producto.
   - Cantidad a comprar.
2. Calcular el total inicial (`precio_producto * cantidad`).
3. Aplicar descuento del 5% si corresponde.
4. Preguntar si el cliente tiene un cupón de descuento:
   - Si tiene, aplicar un 10% de descuento adicional.
5. Calcular el precio con IVA.
6. Calcular el costo de envío.
7. Mostrar el precio final al cliente.

## Ejemplo de ejecución

Supongamos los siguientes valores de entrada:

- **Precio del producto**: $20
- **Cantidad**: 5
- **Cupón**: "si"

El algoritmo realiza los siguientes cálculos:

1. Total inicial: $20 * 5 = $100
2. Aplicar descuento del 5%: $100 * 0.95 = $95
3. Aplicar descuento por cupón: $95 * 0.90 = $85.5
4. Calcular IVA: $85.5 * 1.12 = $95.76
5. Costo de envío: $10 + ($3 * 5) = $25
6. Precio final: $95.76 + $25 = $120.76

El cliente deberá pagar **$120.76**.

## Cómo usar este código en PSeInt

1. Copia el código del algoritmo en el editor de PSeInt.
2. Ejecuta el programa.
3. Ingresa los valores que se soliciten.
4. Observa los resultados detallados para cada paso del cálculo.

## Notas

- El algoritmo asume que el peso por unidad de producto es constante (3 unidades de peso).
- El costo fijo de envío también es constante ($10).
- El algoritmo utiliza estructuras de control como bucles y condicionales para realizar los cálculos.