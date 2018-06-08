<?php
require_once 'db.php';

class Apartamento{
	private $db;
	private $apartamento;

	public function __construct(){
		$this->db=db::conexion();
		$this->apartamento=array();
	}

	//Metodos CRUD
	public function addApartamento($alicuota, $nombre, $saldo){
        $sql = "INSERT INTO apartamentos(id_apartamento, id_alicuota, nombre, saldo)VALUES(
            NULL, '{$alicuota}', '{$nombre}', '{$saldo}')";
            return $this->db->query($sql);
    }

    public function getApartamentos(){
        $sql = $this->db->query("SELECT apartamentos.*,
                                            alicuotas.*
                                            FROM apartamentos
                                                INNER JOIN alicuotas on apartamentos.id_alicuota = alicuotas.id_alicuota");
        while($filas = $sql->fetch_assoc()){
            $this->apartamento[] = $filas;
        }
        return $this->apartamento;
    }

    public function getApartamentoId($id_apartamento){
        $sql = $this->db->query("SELECT * FROM apartamentos WHERE id_apartamento = '{$id_apartamento}'");
        while($filas = $sql->fetch_assoc()){
            $this->apartamento[] = $filas;
        }
        return $this->apartamento;
    } 

    public function editApartamento($id_apartamento, $alicuota, $nombre, $saldo){
        $sql = "UPDATE apartamentos SET id_alicuota='{$alicuota}', nombre='{$nombre}', saldo='{$saldo}'
                  WHERE id_apartamento='{$id_apartamento}'";
        return $this->db->query($sql);
    }
    public function delApartamento($id_apartamento){
        $sql = "DELETE FROM apartamentos WHERE id_apartamento={$id_apartamento}";
        return $this->db->query($sql);
    }
}