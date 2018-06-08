//UT
//Llama modal nuevo
function nuevoProveedor(){
    $('#nuevoProveedor').modal('toggle');
}

//Llama modal para editar
function editProveedor(index) {
    //Modal edit
    $('#editProveedor').modal('toggle');

    //Nodos tabla
    var id_new_proveedor = index.parentNode.parentNode.cells[0].textContent;
    var new_nombres = index.parentNode.parentNode.cells[1].textContent;
    var new_apellidos = index.parentNode.parentNode.cells[2].textContent;
    var new_correo = index.parentNode.parentNode.cells[3].textContent;
    var new_notas = index.parentNode.parentNode.cells[4].textContent;

    //Pego en el formulario
    document.getElementById('id_new_proveedor').value = id_new_proveedor;
    document.getElementById('new_nombres').value = new_nombres;
    document.getElementById('new_apellidos').value = new_apellidos;
    document.getElementById('new_correo').value = new_correo;
    document.getElementById('new_notas').value = new_notas;
}

//Elimina el registro
function delProveedor(index) {
    var tabla = document.getElementById('tablaUt');
    var tr = index.parentNode.parentNode.rowIndex;
    //Nodos tabla
    var id = index.parentNode.parentNode.cells[0].textContent;

    var confirmacion = confirm(`Seguro eliminar este proveedor ${id}`);
        if(confirmacion){
            window.location = "../controllers/proveedores/delProveedor?id="+id;
             tabla.deleteRow(tr);
        }
}