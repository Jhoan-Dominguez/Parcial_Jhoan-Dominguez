<?php
class categoriaDAO{

    private $id;
    private $nombre;

    public function categoriaDAO($id="", $nombre=""){
        $this -> id = $id;
        $this -> nombre = $nombre;
    }

    public function consultarTodos(){
        return "select *
                from categoria
                order by nombre asc";
    }
}
?>