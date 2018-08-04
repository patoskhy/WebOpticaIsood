<?php $dt = parse_ini_file("data.ini"); ?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="<?=$dt["gen.Content-Type"]?>">
        <meta http-equiv="X-UA-Compatible" content="<?=$dt["gen.X-UA-Compatible"]?>">
        <meta name="viewport" content="<?=$dt["gen.viewport"]?>">
        <meta name="description" content="<?=$dt["gen.title"]?>">
        <meta name="author" content="<?=$dt["gen.author"]?>">
        <meta name="keywords" content="<?=$dt["gen.keywords"]?>" />
        <link rel="icon" href="<?=$dt["gen.icon"]?>">

        <title><?=$dt["gen.title"]?></title>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">       
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/carousel.css" rel="stylesheet">
        <link href="css/bootstrap-select.min.css" rel="stylesheet">
        <link href="<?=$dt["gen.estilos"]?>" rel="stylesheet">
    </head>
    <body>
        <div id="fb-root"></div>
        <script>
             (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = 'https://connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v3.0';
            fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));  
        </script>
        <?php include_once("web/navbar.php");?>
        <?php include_once("web/cabezera.php");?>
        <?php include_once("web/container.php");?>
        <?php include_once("web/footer.php");?>
        <div class="modal modal-danger fade" id="myModal" >
            <div class="modal-dialog">
                <div class="modal-content">
                    <div id="modColHeader" class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 id="modTitulo" class="modal-title"></h4>
                    </div>
                    <div id="modColBody" class="modal-body" style="background-color: white !important; color: black !important">
                        <p id="modBody"></p>
                     </div>
                </div> 
            </div>
        <div>
        <script src="js/ie-emulation-modes-warning.js"></script>
        <script src="js/jquery.min.js"></script>
        <script src="js/slick.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/holder.min.js"></script>
        <script src="js/velocity.js"></script>
        <script src="js/ie10-viewport-bug-workaround.js"></script>
        <script src="js/bootstrap-select.min.js"></script>
    </body>
</html>
