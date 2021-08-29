<?php
require_once "persistencia/conexion.php";
require_once "persistencia/productoDAO.php";

class producto{
    private $id;
    private $nombre;
    private $precio;
    private $categoria;
    private $tallas;
    private $cantidad;
    private $conexion;
    private $productoDAO;

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

    /**
     * @return string
     */
    public function getPrecio()
    {
        return $this->precio;
    }

        /**
     * @return string
     */
    public function getCategoria()
    {
        return $this->categoria;
    }

    /**
     * @return string
     */
    public function getTallas()
    {
        return $this->tallas;
    }

    /**
     * @return string
     */
    public function getCantidad()
    {
        return $this->cantidad;
    }

    public function producto($nombre="", $precio=50000, $categoria=1, $tallas="", $cantidad=1){
        $this -> nombre = $nombre;
        $this -> precio = $precio;
        $this -> categoria = $categoria;
        $this -> tallas = $tallas;
        $this -> cantidad = $cantidad;
        $this -> conexion = new conexion();
        $this -> productoDAO = new productoDAO($nombre, intval($precio), intval($categoria), $tallas, intval($cantidad));
    }

    public function crear(){
        $this -> conexion -> abrir();
        // var_dump($this -> productoDAO);
        $this -> conexion -> ejecutar($this -> productoDAO -> crear());
        $this -> conexion -> cerrar();
    }
}

?>