<?php
require_once 'db.php';

class Mensualidad{
	private $db;
	private $mensualidad;

	public function __construct(){
		$this->db=db::conexion();
		$this->mensualidad=array();
	}

	//Metodos CRUD
	public function addMensualidad($descripcion, $total, $fecha){
        $sql = "INSERT INTO mensualidad(id_mensualidad, descripcion, total, fecha)VALUES(
            NULL, '{$descripcion}', '{$total}', '{$fecha}')";
            return $this->db->query($sql);
    }

    public function getMensualidades(){
        $sql = $this->db->query("SELECT * FROM mensualidad");
        while($filas = $sql->fetch_assoc()){
            $this->mensualidad[] = $filas;
        }
        return $this->mensualidad;
    }

    public function getMensualidadesOk(){
        $sql = $this->db->query("SELECT * FROM mensualidad ORDER BY id_mensualidad DESC LIMIT 1");
        while($filas = $sql->fetch_assoc()){
            $this->mensualidad[] = $filas;
        }
        return $this->mensualidad;
    }

    public function getMensualidadId($id_mensualidad){
        $sql = $this->db->query("SELECT * FROM mensualidad WHERE id_mensualidad = '{$id_mensualidad}'");
        while($filas = $sql->fetch_assoc()){
            $this->mensualidad[] = $filas;
        }
        return $this->mensualidad;
    } 

    public function editMensualidad($id_mensualidad ,$descripcion, $total, $fecha, $tipo){
        $sql = "UPDATE mensualidad SET descripcion='{$descripcion}', total='{$total}', 
                    fecha='{$fecha}', tipo='{$tipo}'
                  WHERE id_mensualidad='{$id_mensualidad}'";
        return $this->db->query($sql);
    }
    public function procesarMensualidad($id_mensualidad){
        $sql = "UPDATE mensualidad SET tipo=1
                  WHERE id_mensualidad='{$id_mensualidad}'";
        return $this->db->query($sql);
    }
    public function delMensualidad($id_mensualidad){
        $sql = "DELETE FROM mensualidad WHERE id_mensualidad={$id_mensualidad}";
        return $this->db->query($sql);
    }
}