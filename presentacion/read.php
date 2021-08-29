<?php

    $paginas = 0;

    // $cantidad en esta vista es la cantidad de datos a mostrar o las filas de la tabla
    $cantidad = 5;
    $pagina = 1;

    if(isset($_GET["cantidad"])){
        $cantidad = $_GET["cantidad"];
    }

    if(isset($_GET["pagina"])){
        $cantidad = $_GET["pagina"];
    }

    if($cantidad){
        $product = new producto();
        $paginas = $product -> consultarTotalFilas();
        // echo 'lalala'.$paginas;
        $product = $product -> consultarTodos($cantidad, $pagina);

    }

?>

<div>
    <label for="cantidad">Seleccione el Numero de Elementos a Visualizar: </label>
    <select class="form-select" aria-label="Default select example" name="cantidad" id="cantidad">
        <option value="5" <?php if($cantidad==5) echo "selected"?> > 5 </option>
        <option value="10" <?php if($cantidad==10) echo "selected"?> >10</option>
        <option value="15" <?php if($cantidad==15) echo "selected"?> >15</option>
        <option value="20" <?php if($cantidad==20) echo "selected"?> >20</option>
    </select>

    <div>
    <table class="table">
    <thead>
        <tr>
        <th scope="col">id_producto</th>
        <th scope="col">nombre</th>
        <th scope="col">precio (COP)</th>
        <th scope="col">Categoria</th>
        <th scope="col">Talla </th>
        <th scope="col">Cantidad</th>      
        </tr>
    </thead>
    <tbody>

        <?php 
            foreach ($product as $index) {
        ?>
            <tr>
            <td> <?php echo $index[0] ?> </td>
            <td> <?php echo $index[1] ?> </td>
            <td> <?php echo $index[2] ?> </td>
            <td> <?php echo $index[3] ?> </td>
            <td> <?php echo $index[4] ?> </td>
            <td> <?php echo $index[5] ?> </td>
            </tr>
        <?php
            }
        ?>
      
    </tbody>
    </table>

    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <li class="page-item disabled">
            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
            </li>
            <li class="page-item"><a id="" name="" class="page-link" href="#">1</a></li>
            <li class="page-item"><a id="" name="" class="page-link" href="#">2</a></li>
            <li class="page-item"><a id="" name="" class="page-link" href="#">3</a></li>
            <li class="page-item">
            <a class="page-link" href="#">Next</a>
            </li>
        </ul>
    </nav>
    </div>

</div>

<script>
$("#cantidad").change(function() {
	let cantidad = $("#cantidad").val();
  if(cantidad > 0){
    let url = "index.php?opcion=consultar&cantidad=" + cantidad;
	location.replace(url);
  }else{
    let url = "index.php?opcion=consultar&cantidad=5";
	location.replace(url);
  }
});
</script>