<?php
class productoDAO{

    private $id;
    private $nombre;
    private $precio;
    private $categoria;
    private $tallas;

    public function productoDAO($nombre="", $precio="", $categoria="", $tallas="", $cantidad=""){
        $this -> nombre = $nombre;
        $this -> precio = $precio;
        $this -> categoria = $categoria;
        $this -> tallas = $tallas;
        $this -> cantidad = $cantidad;
    }

    public function crear(){
        return "insert into producto (nombre, precio, id_categoria)
                values (
                '" . $this -> nombre . "',
                '" . $this -> precio . "',
                '" . $this -> categoria . "'
                )";
    }

    public function consultarTodos($filas, $pag){
        return "select * from producto inner join talla on producto.id_producto = talla.id_producto
                order by producto.id_producto asc limit " . (($pag-1)*$filas) . ", " . $filas;
    }

    public function consultarTotalFilas(){
        return "select count(id_producto) from producto";
    }

}
?>