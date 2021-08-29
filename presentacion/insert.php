<?php

    $cantidad = 1;
    $formulario = '';
    if(isset($_GET["cantidad"])){
        $cantidad = $_GET["cantidad"];
    }

    if(isset($_POST["crear"])){
        $cantidad = $_POST["cantidad"];
        if($cantidad){
            for($i = 0; $i < $cantidad; $i++){
                $product = new producto($_POST["nombre".$i], $_POST["precio".$i], $_POST["categoria".$i], $_POST["talla".$i], $_POST["cantidad_talla".$i]);
                $product -> crear();
            }
        }
                
    }

    $categorias = new categoria();
    $categorias = $categorias -> consultarTodos();

    $option_form = '<option value="categoria">Seleccione la Categoria</option> \n';
    foreach($categorias as $categoria){
        $option_form .= '<option value="' . $categoria -> getId() . '">'. $categoria -> getNombre() . '</option> \n';
    }

    for($i = 0; $i < $cantidad; $i++){
        $formulario .= '
        <h1> Producto ' .$i. '</h1> <br>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" name="nombre' .$i. '" id="nombre' .$i. '" placeholder="Nombre">
            <label for="nombre' .$i. '">Nombre</label>
        </div>
        <div class="form-floating">
            <input type="number" class="form-control" name="precio' .$i. '" id="precio' .$i. '" placeholder="Precio">
            <label for="precio' .$i. '">Precio</label>
        </div>
        <br>
        <select class="nav-link dropdown-toggle" style="width: 100%" name="categoria' .$i. '" id="categoria' .$i. '">
        ' . $option_form . '    
        </select>
        <br>
        <select class="nav-link dropdown-toggle" style=" width: 100%" name="talla' .$i. '" id="talla' .$i. '">
            <option value="talla">Seleccione una talla</option>
            <option value="s">s</option>
            <option value="m">m</option>
            <option value="l">l</option>
            <option value="xl">xl</option>
        </select>
        <br>
        <div class="form-floating">
            <input type="number" class="form-control"  name="cantidad_talla' .$i. '" id="cantidad_talla' .$i. '" placeholder="Cantidad">
            <label for="cantidad_talla' .$i. '">Cantidad</label>
        </div>
        
        ';
    }

    $formulario .= '<br>
    <div class="d-grid">
        <button type="submit" name="crear" class="btn btn-primary">Crear</button>
    </div>';

?>

<div style="height: 600px; width:600px; padding: 10px; overflow: auto;" >
    
    <form action="index.php?pid=<?php echo base64_encode("presentacion/insert.php") ?>" method="POST">

    <select class="form-select" aria-label="Default select example" name="cantidad" id="cantidad">
        <option value="0" <?php if($cantidad==0) echo "selected"?> > Cantidad de Productos a Insertar </option>
        <option value="2" <?php if($cantidad==2) echo "selected"?> >2</option>
        <option value="3" <?php if($cantidad==3) echo "selected"?> >3</option>
        <option value="4" <?php if($cantidad==4) echo "selected"?> >4</option>
        <option value="5" <?php if($cantidad==5) echo "selected"?> >5</option>
    </select>
    <hr>
    <?php
    echo $formulario;
    ?> 
    </form>


</div>

<script>
$("#cantidad").change(function() {
	let cantidad = $("#cantidad").val();
  if(cantidad > 0){
    let url = "index.php?opcion=insertar&cantidad=" + cantidad;
	location.replace(url);
  }else{
    let url = "index.php?opcion=insertar&cantidad=1";
	location.replace(url);
  }
});
</script>