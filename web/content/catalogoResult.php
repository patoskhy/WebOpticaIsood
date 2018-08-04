<?php
    $TAMANO_PAGINACION = 9;

    $tipoP = trim($_POST["tipo"]);
    if (!ISSET($_POST["tipo"])) {
        $tipoP = "000001";
    }

    $MarcasP = trim($_POST["marca"]);
    if (!ISSET($_POST["marca"])) {
        $MarcasP = "ALL";
    }

    $MaterialP = trim($_POST["material"]);
    if (!ISSET($_POST["material"])) {
        $MaterialP = "ALL";
    }
    $FormasP = trim($_POST["forma"]);
    if (!ISSET($_POST["forma"])) {
        $FormasP = "ALL";
    }

    $ColoresP = trim($_POST["color"]);
    if (!ISSET($_POST["color"])) {
        $ColoresP = "ALL";
    }
    $indice = 0;
    $pagina = 1;
    if (ISSET($_POST["pagina"])) {
        $pagina = trim($_POST["pagina"]);
        $indice = ($pagina - 1) * $TAMANO_PAGINACION;
    }

    $dt = parse_ini_file("../../data.ini");
    include("../../sistemaWS/includes/phpdbc.min.php");
    require_once("../../sistemaWS/config/vars.php");

    $config = new Vars($dt);
    $db = new db();
    $db->setConection($config->host, $config->usuario, $config->contrasenia, $config->bd, "PDO");
    $db->conectar();

    $SELECT = "SELECT PRO.CODIGO,PRO.DESCRIPCION AS DES_PRO,PRO.VALOR,MAR.DESCRIPCION DES_MAR,PRO.MODELO,PRO.FOTO1,PRO.FOTO2 ";
    $SELECT = $SELECT . "FROM brc_producto_web PRO ";
    $SELECT = $SELECT . "INNER JOIN brc_codigos_web MAR ON MAR.TIPO = 'MARCA' AND MAR.CODIGO = PRO.COD_MARCA ";
    $SELECT = $SELECT . "WHERE COD_TIPO='".$tipoP."' AND PRO.VIGENCIA = 'S'";
  
    if($MarcasP != "ALL"){
        $SELECT = $SELECT . " AND COD_MARCA = '".$MarcasP."'";
    }

    if($MaterialP != "ALL"){
        $SELECT = $SELECT . " AND COD_MATERIAL = '".$MaterialP."'";
    }

    if($FormasP != "ALL"){
        $SELECT = $SELECT . " AND COD_FORMA = '".$FormasP."'";
    }

    if($ColoresP != "ALL"){
        $SELECT = $SELECT . " AND COD_COLOR = '".$ColoresP."'";
    }

    //var_dump($SELECT);
    $db->query($SELECT);
    $data = $db->datos();
    $num_total_registros = count($data);
    $total_paginas = ceil($num_total_registros / $TAMANO_PAGINACION);

    $SELECT = $SELECT ." ORDER BY PRO.DESCRIPCION DESC LIMIT ".$indice."," . $TAMANO_PAGINACION;
    $db->query($SELECT);
    $campos = $db->datos();
    $num_total_registros = count($campos);

    $limInf = 1;
    $limSup = $total_paginas;
    if(($pagina + 5) < $total_paginas){
        $limSup = ($pagina + 5);
    }
?>
<?php if($num_total_registros > 0 ){ 
    //paginacion
    if ($total_paginas > 1) {
        echo '<ul class="pagination">';
        
        //retrocede 5 paginas
        if(($pagina - 5) > 0){
            $limInf = ($pagina - 5);
            $var = "'".$tipoP."','".$MarcasP."','".$MaterialP."','".$FormasP."','".$ColoresP."','".($pagina - 5)."'";
            echo '<li><a onclick="javascript:MoverPaginacion('.$var.');return false;" href="#"><span class="glyphicon glyphicon-chevron-left"></span><span class="glyphicon glyphicon-chevron-left"></span></a></li>';
        }

        //retroceder a la pagina anterior
        if($pagina > 1){
            $var = "'".$tipoP."','".$MarcasP."','".$MaterialP."','".$FormasP."','".$ColoresP."','".($pagina - 1)."'";
            echo '<li><a onclick="javascript:MoverPaginacion('.$var.');return false;" href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>';
        }
        //muestra paginas
		for ($i=$limInf;$i<=$limSup;$i++) {

			if ($pagina == $i){
				echo '<li class="disable active"><a href="#">'.$pagina.'</a></li>';
            }else{
                $var = "'".$tipoP."','".$MarcasP."','".$MaterialP."','".$FormasP."','".$ColoresP."','".($i)."'";
                echo '<li><a onclick="javascript:MoverPaginacion('.$var.');return false;" href="#" style="text-decoration:none;">'.$i.'</a></li>';
            }
        }
       
        //avanzar a la pagina siguiente
        if ($pagina != $total_paginas){
            $var = "'".$tipoP."','".$MarcasP."','".$MaterialP."','".$FormasP."','".$ColoresP."','".($pagina + 1)."'";
                echo '<li><a onclick="javascript:MoverPaginacion('.$var.');return false;" href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>';
        }
         //avanza 5 paginas de la pagina actual
         if(($pagina + 5) < $total_paginas){
            $var = "'".$tipoP."','".$MarcasP."','".$MaterialP."','".$FormasP."','".$ColoresP."','".($pagina + 5)."'";
            echo '<li><a onclick="javascript:MoverPaginacion('.$var.');return false;" href="#"><span class="glyphicon glyphicon-chevron-right"></span><span class="glyphicon glyphicon-chevron-right"></span></a></li>';
        }
        echo '</ul>';
	}    
?>
<br>
    <?php 
            //resultados
            for($i = 0; $i < $num_total_registros; $i++) { ?>   
    
                <div class="col-md-3 text-center product-item">
                    <div class="contenedorImg">
                        <img src="comun/muestraImagen.php?cod=<?= $campos[$i]["CODIGO"] ?>&img=2" />
                        <img class="top" src="comun/muestraImagen.php?cod=<?= $campos[$i]["CODIGO"] ?>&img=1" />
                    </div>
                    <p class="product-name-results"><?= $campos[$i]["DES_MAR"] ?><p>
                    <p class="product-code-results"><?= $campos[$i]["CODIGO"] ?><p>
                    <p class="product-price-results">CLP$ <?= $campos[$i]["VALOR"] ?>.-<p>
                    <a onclick="javascript:CargaDetalle('<?= $campos[$i]["CODIGO"] ?>','<?= $tipoP ?>','<?= $MarcasP ?>','<?= $MaterialP ?>','<?= $FormasP ?>','<?= $ColoresP ?>');return false;" href="#" style="text-decoration:none;">Detalle >></a>
                </div>
                <?php if($num_total_registros == 1) { ?>
                    <div class="col-md-9"></div>
                <?php } ?>
                <?php if($num_total_registros == 2 && $i == 1) { ?>
                    <div class="col-md-6"></div>
                <?php } ?>
     
    <?php } ?>
    
<?php }else{ ?>
    <h2>No se encontraron registros.</h2>
<?php } ?>

