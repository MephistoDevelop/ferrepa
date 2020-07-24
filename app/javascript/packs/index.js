const calcularPrecio = () => {
  const precio = documet.getElementById('txt-compra').value;
  const porcentaje = document.getElementById('txt-porcentaje').value;
  let precioGeneral = parseInt(precio)+ (parseInt(precio) * parseInt(porcentaje));
  document.getElementById('txtprecio-general').value = precioGeneral
console.log("Funko ??")
}