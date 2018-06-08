//Alicuotas
//Llama modal nuevo
function nuevoGasto(){
    $('#nuevoGasto').modal('toggle');
}

//Llama modal para editar
function editGasto(index) {
    //Modal edit
    $('#editGasto').modal('toggle');

    //Nodos tabla
    var id_gasto = index.parentNode.parentNode.cells[0].textContent;
    var new_ut = index.parentNode.parentNode.cells[1].textContent;
    var new_descripcion = index.parentNode.parentNode.cells[2].textContent;
    var new_monto = index.parentNode.parentNode.cells[3].textContent;
    var new_tipo = index.parentNode.parentNode.cells[4].textContent;

    //Pego en el formulario
    document.getElementById('id_new_gasto').value = id_gasto;
    document.getElementById('new_descripcion_gasto').value = new_descripcion;
    document.getElementById('new_monto_gasto').value = new_monto;
}
//Calculo Iva
function subTotalGasto(index){
    var subTotalCal = parseFloat(index.value) * 12 / 100;
    var totalOk = parseFloat(subTotalCal) + parseFloat(index.value);
    $('#montoGasto').each(function(){
       // if(!isNaN(index.value) && index.value.length != 0){
       //      totalOk += parseFloat(index.value);
       // }
    });

    $('#totalGasto').val(totalOk.toFixed(2));      
}
function subTotalGastoEdit(index){
    var subTotalCal = parseFloat(index.value) * 12 / 100;
    var totalOk = parseFloat(subTotalCal) + parseFloat(index.value);
    $('#new_monto_gasto').each(function(){
       // if(!isNaN(index.value) && index.value.length != 0){
       //      totalOk += parseFloat(index.value);
       // }
    });

    $('#newTotalGasto').val(totalOk.toFixed(2));      
}
//Elimina el registro
function delGasto(index) {
    var tabla = document.getElementById('tablaGastos');
    var tr = index.parentNode.parentNode.rowIndex;
    //Nodos tabla
    var id = index.parentNode.parentNode.cells[0].textContent;

    var confirmacion = confirm(`Seguro eliminar el gasto ${id}`);
        if(confirmacion){
            window.location = "../controllers/gastos/delGasto?id="+id;
             tabla.deleteRow(tr);
        }
}