<?php 
require_once '../../controllers/usuarios/check.php';
require_once '../../models/gasto.php';
require_once '../../models/auditoria.php';

$gasto = new Gasto();
$auditoria = new Auditoria();

if(!empty($_POST)){
	$gasto->editGasto($_POST['id_new_gasto'], $_POST['id_new_ut_gasto'], $_POST['new_descripcion_gasto'], $_POST['new_monto_gasto'], $_POST['new_tipo_gasto']);
	$auditoria->addAuditoria($_SESSION['idusuario'], 'Editar un gasto', 'gastos');
	header('Location: ../../pages/?gastos');
}