<?php 
require_once '../../controllers/usuarios/check.php';
require_once '../../models/gasto.php';
require_once '../../models/auditoria.php';

$gasto = new Gasto();
$auditoria = new Auditoria();

if(!empty($_POST)){
	$id_ut = isset($_POST['id_ut']) ? $_POST['id_ut'] : '';
	$descripcion = isset($_POST['descripcion']) ? $_POST['descripcion'] : '';
	$monto = isset($_POST['monto']) ? $_POST['monto'] : '';
	$tipo = isset($_POST['tipo']) ? $_POST['tipo'] : '';

	$gasto->addGasto($id_ut, $descripcion, $monto, $tipo);
	$auditoria->addAuditoria($_SESSION['idusuario'], 'Agregar un gasto', 'gastos');
	header('Location: ../../pages/?gastos');
}