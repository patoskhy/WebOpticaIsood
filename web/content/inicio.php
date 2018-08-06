<?php
    if (!ISSET($_GET["tipo"])) {
        $_GET["tipo"] = "000001";
    }

    include("sistemaWS/includes/phpdbc.min.php");
    require_once("sistemaWS/config/vars.php");

    $config = new Vars($dt);
    $db = new db();
    $db->setConection($config->host, $config->usuario, $config->contrasenia, $config->bd, "PDO");
    $db->conectar();

    $SELECT = "SELECT CODIGO,IMG ";
    $SELECT = $SELECT . "FROM brc_codigos_web WHERE TIPO = 'MARCA' ";  
    $db->query($SELECT);
    $result = $db->datos();
?>

<br>
<div class="seccionProductos row">
    <div class="col-md-1"></div>
    <div class="col-md-5">
        <a href="catalogo.php?tipo=000001">
            <img src="img/web/inicio1.jpg" style="width:100%; height:100%;"/>
            <h1>Armazones Ópticos</h1>
        </a>
    </div>
    <div class="col-md-5">
        <a href="catalogo.php?tipo=000002">
            <img src="img/web/inicio2.jpg" style="width:100%; height:100%; "/>
            <h1>Lentes de Sol</h1>
        </a>
    </div>
    <div class="col-md-1"></div>
</div>
<br>
<br>
<br>
<div class="tit-inicio">
    <div><h3>Convenios</h3></div>
    <div class="linea"> </div>
</div>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="text-center">
        <a href="convenio.php">
            <img src="img/web/convenios.png" style="width:100%; height:100%; "/>
        </a>
        </div>
    </div>
    </div>
    <div class="col-md-1"></div>
</div>
<br>
<div class="tit-inicio">
    <div><h3>Marcas</h3></div>
    <div class="linea"> </div>
</div>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="customer-logos">
        <?php foreach($result as $row){ ?>
            <div class="slide"><a href="catalogo.php?tipo=000001&marca=<?=$row["CODIGO"]?>"><img src="<?=$dt['gen.sistema'].$row["IMG"]?>"></a></div>
        <?php } ?>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>

<br>

<br>
<br>
<br>
<br>
<div class="seccionProductos row">
    <div class="col-md-1"></div>
    <div class="col-md-5">
        <a href="atencion.php">
            <img src="img/web/inicio3.jpg" style="width:100%; height:100%;"/>
            <h1>API Oftalmología</h1>
        </a>
    </div>
    <div class="col-md-5">
        <a href="optica.php">
            <img src="img/web/inicio4.jpg" style="width:100%; height:100%; "/>
            <h1>Óptica</h1>
        </a>
    </div>
    <div class="col-md-1"></div>
</div>
<br>
<br>
<br>
<div class="tit-inicio">
    <div><h3>Medios de Pago</h3></div>
    <div class="linea"> </div>
</div>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="text-center" align="center">
            <img src="img/web/mediospago.jpg" style="max-width: 100%; height: auto;" align="middle" >
        </div>
    </div>
    </div>
    <div class="col-md-1"></div>
</div>
<br>
<br>
<br>
<br>