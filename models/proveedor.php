<?php
require_once 'db.php';

class Proveedor{
	private $db;
	private $proveedor;

	public function __construct(){
		$this->db=db::conexion();
		$this->proveedor=array();
	}

	//Metodos CRUD
	public function addProveedor($nombres, $apellidos, $correo, $notas){
        $sql = "INSERT INTO proveedores(id_proveedor, nombres, apellidos, correo, notas)VALUES(
            NULL, '{$nombres}', '{$apellidos}', '{$correo}', '{$notas}')";
            return $this->db->query($sql);
    }

    public function getProveedor(){
        $sql = $this->db->query("SELECT * FROM proveedores");
        while($filas = $sql->fetch_assoc()){
            $this->proveedor[] = $filas;
        }
        return $this->proveedor;
    }

    public function getProveedorId($id_proveedor){
        $sql = $this->db->query("SELECT * FROM proveedores WHERE id_proveedor = '{$id_proveedor}'");
        while($filas = $sql->fetch_assoc()){
            $this->proveedor[] = $filas;
        }
        return $this->proveedor;
    } 

    public function editProveedor($id_proveedor, $nombres, $apellidos, $correo, $notas){
        $sql = "UPDATE proveedores SET nombres='{$nombres}', apellidos='{$apellidos}', correo='{$correo}', notas='{$notas}'
                  WHERE id_proveedor='{$id_proveedor}'";
        return $this->db->query($sql);
    }
    public function delProveedor($id_proveedor){
        $sql = "DELETE FROM proveedores WHERE id_proveedor={$id_proveedor}";
        return $this->db->query($sql);
    }
}