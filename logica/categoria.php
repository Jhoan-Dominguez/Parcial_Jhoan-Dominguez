<?php
require_once "persistencia/conexion.php";
require_once "persistencia/categoriaDAO.php";

class categoria{
    private $id;
    private $nombre;
    private $conexion;
    private $categoriaDAO;

     /**
     * @return string
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return string
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    public function categoria($id="", $nombre=""){
        $this -> id = $id;
        $this -> nombre = $nombre;
        $this -> conexion = new conexion();
        $this -> categoriaDAO = new categoriaDAO($id, $nombre);
    }
    
    public function consultarTodos(){
        $this -> conexion -> abrir();
        $this -> conexion -> ejecutar($this -> categoriaDAO -> consultarTodos());
        
        $categorias = array();
        while(($resultado = $this -> conexion -> extraer()) != null){
            // var_dump($resultado);
            array_push($categorias, new categoria($resultado[0], $resultado[1]));            
        }
        $this -> conexion -> cerrar();
        // var_dump($categorias);
        return $categorias;
    }
}
?>
