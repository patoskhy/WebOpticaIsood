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

    function CargaDetalle(codigo,tipo,marca,material,forma,color,marcaB,materialB,formaB,colorB){
         $.ajax({
                data:  {
                    "det": codigo,
                    "tipo": tipo.trim(),
                    "marca" : marca.trim(),
                    "material" : material.trim(),
                    "forma" : forma.trim(),
                    "color" : color.trim(),
					"marcaB" : marcaB.trim(),
                    "materialB" : materialB.trim(),
                    "formaB" : formaB.trim(),
                    "colorB" : colorB.trim()
                },
                url:   'web/content/catalogoDetalle.php',
                type:  'post',
                beforeSend: function () {

                        //$("#catalogoResult").html("Procesando, espere por favor...");
                },
                success:  function (response) {
                        //$("#catalogoResult").html(response);
                        res = JSON.parse(response)
                        $("#detTitulo").html(res[0].DES_MAR);
                        $("#detCodigo").html(res[0].CODIGO);
                        $("#detModelo").html(res[0].MODELO);
                        $("#detColor").html(res[0].DES_COL);
                        $("#detForma").html(res[0].DES_FOR);
                        $("#detDescripcion").html(res[0].DES_PRO);
                        $("#detMarca").html(res[0].DES_MAR);
                        $("#detMaterial").html(res[0].DES_MAT);
                        $("#detImg").attr("src", "comun/muestraImagen.php?cod="+ res[0].CODIGO +"&mod=" + res[0].MODELO + "&img=2")
                        $("#detalleModal").modal();
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