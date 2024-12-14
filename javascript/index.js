const PRECIO = parseInt(prompt("Ingrese el precio del producto"));
const CANTIDAD = parseInt(prompt("Ingrese la cantidad a comprar"));

let totalNeto = 0;
const CUPON_DESCUENTO = 0.1;
const IVA = 0.12;
const DESCUENTO = 0.05;
const COSTO_FIJO_ENVIO = 10;
const PESO_PRODUCTO_UNIDAD = 3;
const COMPRAS = []
let totalConCupon = 0;

const TOTAL = PRECIO * CANTIDAD;

for( i = 0; i <= CANTIDAD; i++ ) {
    if( i >= 2 ) {
        totalNeto = TOTAL * (1 - DESCUENTO);
    } else {
        totalNeto = TOTAL;
    }
}

alert(`El total con descuento es: ${totalNeto}`);

const CUPON = prompt("¿Tiene cupon de descuento? (si/no)");

if( CUPON === "si" ) {
    totalConCupon = totalNeto * ( 1 - CUPON_DESCUENTO );
} else {
    totalConCupon = totalNeto;
}

alert(`El total con cupon es: ${totalConCupon}`);

const PRECIO_CON_IVA = totalConCupon * (1 + IVA);
alert(`El precio con iva es: ${PRECIO_CON_IVA}`);

const COSTO_DE_ENVIO = COSTO_FIJO_ENVIO + (PESO_PRODUCTO_UNIDAD * CANTIDAD);
alert(`El costo de envio es: ${COSTO_DE_ENVIO}`);

const COSTO_FINAL_COMPRA = PRECIO_CON_IVA + COSTO_DE_ENVIO;
COMPRAS.push(COSTO_FINAL_COMPRA);
alert(`El precio final de la compra es: ${COMPRAS}`);
