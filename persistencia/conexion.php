<?php
class Conexion{
    private $mysqli;
    private $resultado;
    
    public function abrir(){
        $this -> mysqli = new mysqli("localhost", "root", "", "sport_shop");
        $this -> mysqli -> set_charset("utf8");
    }

    public function cerrar(){
        $this -> mysqli -> close();
    }

    public function ejecutar($sentencia){
        $this -> resultado = $this -> mysqli -> query($sentencia);
    }
    
    public function extraer(){
        return $this -> resultado -> fetch_row();
    }
    
    public function numFilas(){
        return ($this -> resultado != null) ? $this -> resultado -> num_rows : 0; 
    }

}

?>