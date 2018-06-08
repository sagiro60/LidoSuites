<?php
require_once '../../controllers/usuarios/check.php';
require_once '../../models/alicuota.php';
require_once '../../models/auditoria.php';

$instanciaAlicuota = new Alicuota();
$auditoria = new Auditoria();

if(!empty($_POST)){
	$alicuota = isset($_POST['alicuota']) ? $_POST['alicuota'] : '';
	$monto = isset($_POST['montoAlicuota']) ? $_POST['montoAlicuota'] : '';

	$instanciaAlicuota->addAlicuota($alicuota, $monto);

	$auditoria->addAuditoria($_SESSION['idusuario'], 'Agregar una alicuota', 'alicuotas');
	header('Location: ../../pages/?alicuotas');
}