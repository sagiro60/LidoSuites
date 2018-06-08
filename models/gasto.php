<?php
require_once 'db.php';

class Gasto{
	private $db;
	private $gasto;

	public function __construct(){
		$this->db=db::conexion();
		$this->gasto=array();
	}

	//Metodos CRUD
	public function addGasto($id_ut, $descripcion, $monto, $tipo){
        $sql = "INSERT INTO gastos(id_gasto, id_ut, descripcion, monto, tipo)VALUES(
            NULL, '{$id_ut}', '{$descripcion}', '{$monto}', '{$tipo}')";
            return $this->db->query($sql);
    }

    public function getGastos(){
        $sql = $this->db->query("SELECT gastos.*, ut.* 
                                    FROM gastos
                                    INNER JOIN ut on ut.id_ut = gastos.id_ut");
        while($filas = $sql->fetch_assoc()){
            $this->gasto[] = $filas;
        }
        return $this->gasto;
    }

    public function getGastoId($id_gasto){
        $sql = $this->db->query("SELECT * FROM gastos WHERE id_gasto = '{$id_gasto}'");
        while($filas = $sql->fetch_assoc()){
            $this->gasto[] = $filas;
        }
        return $this->gasto;
    } 

    public function editGasto($id_gasto, $id_ut, $descripcion, $monto, $tipo){
        $sql = "UPDATE gastos SET id_ut='{$id_ut}', descripcion='{$descripcion}',
                                    monto='{$monto}', tipo='{$tipo}'
                  WHERE id_gasto='{$id_gasto}'";
        return $this->db->query($sql);
    }
    public function delGasto($id_gasto){
        $sql = "DELETE FROM gastos WHERE id_gasto={$id_gasto}";
        return $this->db->query($sql);
    }
}