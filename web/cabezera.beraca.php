<?php 
    switch ($page) {
        case "catalogo":
        /*cabezera de catalago*/
?>
            <div class="container" style="margin-top:70px;">
                <div class="row">
                    <div class="col-lg-12">
                        <img style="width:100%; " src="img/web/img<?= ( $_GET["tipo"] == "000001" ? "2" : "5" )?>.jpg">
                        <h1 class="texto-cabezera-<?= ( $_GET["tipo"] == "000001" ? "izq" : "der" )?>">Catálogo de Lentes</h1>
                    </div>
                </div>
                <br><br>
            </div>
<?php
            break;
        case "optica":
        /*cabezera de optica*/
?> 
            <div class="container" style="margin-top:70px;">
                <div class="row">
                    <div class="col-lg-12">
                        <img style="width:100%;" src="img/web/img3.jpg">
                        <h1 class="texto-cabezera-izq">Sobre Nosotros</h1>
                    </div>
                </div>
                <br><br>
            </div>
<?php       
            break;
        case "atencion":
        /*cabezera de atencion*/
?>
            <div class="container" style="margin-top:70px;">
                <div class="row">
                    <div class="col-lg-12">
                        <img style="width:100%;" src="img/web/img4.jpg">
                        <h1 class="texto-cabezera-der">API de Reservas</h1>
                    </div>
                </div>
                <br><br>
            </div>
<?php            
            break;
        default:
            /*default*/
            include_once("carousel.php");
?>
             <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-10 text-center">
                    <h1 class="h1f"><?=$dt["gen.title"]?>: Venta de Lentes Ópticos.</h1>
                </div>
                <div class="col-lg-1"></div>
            </div>
<?php        
    }
?>