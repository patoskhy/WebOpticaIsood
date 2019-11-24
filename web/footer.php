<footer class="text-center">
	<div class="footer-above">
		<div class="container">
			<div class="row">
				<div class="footer-col col-md-4">
					<h2>Ubicación</h2>
					<p><?=$dt["ub.direccion"]?>
					<br><?=$dt["ub.ciudad"]?>
					<br><?=$dt["ub.telefono"]?></p>
				</div>
				<div class="footer-col col-md-4">
					<h2>Redes Sociales</h2>
					<ul class="list-inline">
						<li>
							<a href="<?=$dt["rs.facebook"]?>" target="_blank" class="social-icons-icon icon-sprite icon-sprite-48 icon-facebook-48"></a>
						</li>
						<li>
							<a href="<?=$dt["rs.instagram"]?>" target="_blank" class="social-icons-icon icon-sprite icon-sprite-48 icon-instagram-48"></a>
						</li>
						<li>
							<a href="<?=$dt["rs.pinest"]?>" target="_blank" class="social-icons-icon icon-sprite icon-sprite-48 icon-pinterest-48"></a>
						</li>
						<li>
							<a href="<?=$dt["rs.twitter"]?>" target="_blank" class="social-icons-icon icon-sprite icon-sprite-48 icon-twitter-48"></a>
						</li>
						<li>
							<a href="<?=$dt["rs.youtube"]?>" target="_blank" class="social-icons-icon icon-sprite icon-sprite-48 icon-youtube-48"></a>
						</li>
					</ul>
				</div>
				<div class="footer-col col-md-4">
					<h2>Contacto</h2>
					<p><a href="optica.php#contacto" class="footer">Formulario de contacto aquí</a>.</p>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-below">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					Copyright &copy; <?=$dt["gen.title"]?> 2017
				</div>
			</div>
		</div>
	</div>
</footer>	