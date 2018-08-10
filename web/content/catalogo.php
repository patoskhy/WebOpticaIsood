<?php
    if (!ISSET($_GET["tipo"])) {
        $_GET["tipo"] = "000001";
    }

    if (!ISSET($_GET["marca"])) {
        $_GET["marca"] = "ALL";
    }
    include("sistemaWS/includes/phpdbc.min.php");
    require_once("sistemaWS/config/vars.php");

    $config = new Vars($dt);
    $db = new db();
    $db->setConection($config->host, $config->usuario, $config->contrasenia, $config->bd, "PDO");
    $db->conectar();


    $SELECT = "SELECT CODIGO,DESCRIPCION ";
    $SELECT = $SELECT . "FROM brc_codigos_web WHERE TIPO = 'MARCA' ";
    $db->query($SELECT);
    $Marcas = $db->datos();

    $SELECT = "SELECT CODIGO,DESCRIPCION ";
    $SELECT = $SELECT . "FROM brc_codigos_web WHERE TIPO = 'MATERIAL' "; 
    $db->query($SELECT);
    $Material = $db->datos();

    $SELECT = "SELECT CODIGO,DESCRIPCION ";
    $SELECT = $SELECT . "FROM brc_codigos_web WHERE TIPO = 'FORMA' ";  
    $db->query($SELECT);
    $Formas = $db->datos();

    $SELECT = "SELECT CODIGO,DESCRIPCION ";
    $SELECT = $SELECT . "FROM brc_codigos_web WHERE TIPO = 'COLOR' ";  
    $db->query($SELECT);
    $Colores = $db->datos();
?>

<div class="tit-inicio">
    <div class="linea"> </div>
</div>
<br>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-3">
        <form>
            <div class="form-group">
                <label for="marca">Marcas</label><br>
                <select name="marca" id="marca" class="selectpicker" data-size="5" data-live-search="true" data-style="btn-sistema">
                    <option <?= ($_GET["marca"] == "ALL")? "selected='selected'": "" ?> value="ALL">TODAS</option> 
                    <?php foreach ($Marcas as $clave) { ?>
                        <option <?= ($_GET["marca"] == $clave["CODIGO"])? "selected='selected'": "" ?> value="<?= $clave["CODIGO"] ?>"><?= $clave["DESCRIPCION"] ?></option>    
                    <?php } ?>
                </select>
            </div>
            <div class="form-group">
                <label for="material">Material</label><br>
                <select name="material" id="material" class="selectpicker" data-size="5" data-live-search="true" data-style="btn-sistema">
                    <option value="ALL">TODOS</option> 
                    <?php foreach ($Material as $clave) { ?>
                        <option value="<?= $clave["CODIGO"] ?>"><?= $clave["DESCRIPCION"] ?></option>    
                    <?php } ?>
                </select>
            </div>
            <div class="form-group">
                <label for="forma">Formas</label><br>
                <select name="forma" id="forma" class="selectpicker" data-size="5" data-live-search="true" data-style="btn-sistema">
                    <option value="ALL">TODAS</option> 
                    <?php foreach ($Formas as $clave) { ?>
                        <option value="<?= $clave["CODIGO"] ?>"><?= $clave["DESCRIPCION"] ?></option>    
                    <?php } ?>
                </select>
            </div>
            <div class="form-group">
                <label for="color">Colores</label><br>
                <select name="color" id="color" class="selectpicker" data-size="5" data-live-search="true" data-style="btn-sistema">
                    <option value="ALL">TODOS</option> 
                    <?php foreach ($Colores as $clave) { ?>
                        <option value="<?= $clave["CODIGO"] ?>"><?= $clave["DESCRIPCION"] ?></option>    
                    <?php } ?>
                </select>
            </div>
        </form>
    </div>

    <div class="col-md-7">
        <div class="row">
            <span id="catalogoResult"></span>     
        </div>
        <div class="row">
            <div class="fb-comments" data-href="<?=$dt["rs.fb.comments"]?>" data-numposts="5"></div>
        </div>
        
    </div>
    <div class="col-md-1"></div>
</div>
<br>