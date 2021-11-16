function fnValidaDatos(){
    error = false;
    descripcionError = '';
    nombreCliente = document.getElementById('txtCliente').value;
    edadCliente = document.getElementById('txtEdad').value;
    montoInvertir = document.getElementById('txtMonto').value;
    cantidadAnos = document.getElementById('lstAnos').value;
    if (nombreCliente == ''){
        descripcionError = descripcionError + '<li class="textosError">Debe ingresar el nombre del cliente</li>';
        error = true;
    }
    if (edadCliente == ''){
        descripcionError = descripcionError + '<li class="textosError">Debe ingresar la edad del cliente</li>';
        error = true;
    }else{
        if (isNaN(edadCliente)){
            descripcionError = descripcionError + '<li class="textosError">La edad del cliente no es válida.</li>';
            error = true;
        }else{
            if (parseInt(edadCliente) < 17 || parseInt(edadCliente) > 80){
                descripcionError = descripcionError + '<li class="textosError">No cumple con la Edad requerida para invertir.</li>';
                error = true;
            }
        }
    }
    if (montoInvertir == ''){
            descripcionError = descripcionError + '<li class="textosError">Debe ingresar el monto a invertir.</li>';
            error = true;
    }else{
        if (isNaN(montoInvertir)){
            descripcionError = descripcionError + '<li class="textosError">El monto ingresado no es v&aacute;lido.</li>';
            error = true;
        }
    }
    if (cantidadAnos == ''){
        descripcionError = descripcionError + '<li class="textosError">Debe seleccionar la cantidad de años para su inversión</li>';
        error = true;
    }
    if (error){
        textoMensaje = '<fieldset><legend><b>Han ocurrido los siguientes errores:</b></legend><ul>';
	document.getElementById('errores').innerHTML = textoMensaje + descripcionError + '</u></legend>'; 
    }else{
        document.frmInteres.submit();
    }
}
function fnLimpiar(){
	document.getElementById('txtCliente').value = '';
	document.getElementById('txtEdad').value = '';
	document.getElementById('txtMonto').value = '';
	document.getElementById('lstAnos').value = '';
	document.getElementById('errores').innerHTML = '';
}
function fnLimpiaErrores(){
	document.getElementById('errores').innerHTML = '';
}
