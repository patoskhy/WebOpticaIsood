<?php $page="catalogo"; ?>
<?php include_once("main.php");?>

<script>
    $(document).ready(function(){
        BuscarProductos();
		$("#marca").on("change",function(){
            BuscarProductos();
        });
        $("#material").on("change",function(){
            BuscarProductos();
        });
        $("#forma").on("change",function(){
            BuscarProductos();
        });
        $("#color").on("change",function(){
            BuscarProductos();
        });   
	});
    
    function BuscarProductos(){
        marca = $("#marca").val();
        material = $("#material").val();
        forma = $("#forma").val();
        color = $("#color").val();
        $.ajax({
                data:  {
                    "tipo": "<?= $_GET["tipo"] ?>",
                    "marca" : marca.trim(),
                    "material" : material.trim(),
                    "forma" : forma.trim(),
                    "color" : color.trim()
                },
                url:   'web/content/catalogoResult.php',
                type:  'post',
                beforeSend: function () {
                        $("#catalogoResult").html("Procesando, espere por favor...");
                },
                success:  function (response) {
                        $("#catalogoResult").html(response);
                }
        });
    }

    function CargaDetalle(codigo,tipo,marca,material,forma,color){
         $.ajax({
                data:  {
                    "det": codigo,
                    "tipo": tipo.trim(),
                    "marca" : marca.trim(),
                    "material" : material.trim(),
                    "forma" : forma.trim(),
                    "color" : color.trim()
                },
                url:   'web/content/catalogoDetalle.php',
                type:  'post',
                beforeSend: function () {
                        $("#catalogoResult").html("Procesando, espere por favor...");
                },
                success:  function (response) {
                        $("#catalogoResult").html(response);
                }
        });
    }

    function MoverPaginacion(tipo,marca,material,forma,color,pagina){
         $.ajax({
                data:  {
                    "tipo": tipo.trim(),
                    "marca" : marca.trim(),
                    "material" : material.trim(),
                    "forma" : forma.trim(),
                    "color" : color.trim(),
                    "pagina" : pagina.trim()
                },
                url:   'web/content/catalogoResult.php',
                type:  'post',
                beforeSend: function () {
                        $("#catalogoResult").html("Procesando, espere por favor...");
                },
                success:  function (response) {
                        $("#catalogoResult").html(response);
                }
        });
    }

    function VolverResult(tipo,marca,material,forma,color){
         $.ajax({
                data:  {
                    "tipo": tipo.trim(),
                    "marca" : marca.trim(),
                    "material" : material.trim(),
                    "forma" : forma.trim(),
                    "color" : color.trim()
                },
                url:   'web/content/catalogoResult.php',
                type:  'post',
                beforeSend: function () {
                        $("#catalogoResult").html("Procesando, espere por favor...");
                },
                success:  function (response) {
                        $("#catalogoResult").html(response);
                }
        });
    }

   
</script>