<?php
include("cabecera.php");
?>
<!DOCTYPE HTML>
<html>
	<head>
		<title>SRCL</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/principal.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body>

		<!-- Five -->
		<section id="five" class="main style1">
			<div class="container">
				<header class="major special">
					<h2>SRCL</h2>
				</header>
					<section>
						<a href="index2.html" class="icon alt fa-home fa-lg"><span class="label">Inicio</span></a>
						<h4>Servicios</h4>

						<ul class="actions fit small">
							<?php 
								if ($_SESSION["acceso"] == "secretaria") {
									echo "<li><a href=FormularioNuevoTutor.php class=button special fit small>Registrar Tutor</a></li>";
								}
								if ($_SESSION["acceso"] == "secretaria") {
									echo "<li><a href=Verificar.php class=button fit small>Verificar los requisitos</a></li>";
								}
								if ($_SESSION["acceso"] == "tutor") {
									echo "<li><a href=Descargar.php class=button special fit small>Descargar lista</a></li>";
								}
								if ($_SESSION["acceso"] == "tutor") {
									echo "<li><a href=RegistrarNotas.php class=button fit small>Registrar Notas</a></li>";
								}
							?>
						</ul>		
					</section>

					<section>
<!-- 						<h5>Alternate</h5> -->
						<header class="major special">
							<h5>Registrar Tutor</h5>
						</header>

							<section>
								<form method="post" action="#">
									<div class="row uniform 50%">
										<div class="6u 12u$(xsmall)">
											<input type="text" name="demo-name" id="demo-name" value="" placeholder="Nombre" />
										</div>
										<div class="6u 12u$(small)">
											<input type="text" name="demo-name" id="demo-name" value="" placeholder="Apellido" />
										</div>
										<div class="6u 12u$(xsmall)">
											<input type="text" name="demo-name" id="demo-name" value="" placeholder="Cl" />
										</div>
										<div class="6u$ 12u$(xsmall)">
											<input type="email" name="demo-email" id="demo-email" value="" placeholder="Email" />
										</div>
										<div class="6u 12u$(xsmall)">
											<input type="text" name="demo-name" id="demo-name" value="" placeholder="Contraseña" />
										</div>
										<div class="6u$ 12u$(xsmall)">
											<input type="email" name="demo-email" id="demo-email" value="" placeholder="Confirmar Contraseña" />
										</div>
										<div class="12u$">
											<div class="select-wrapper">
												<select name="demo-category" id="demo-category">
													<option value="">- Areas -</option>
													<option value="1">Administrativa</option>
													<option value="1">Biológica</option>
													<option value="1">Sociohumanistica</option>
													<option value="1">Técnica</option>
												</select>
											</div>
										</div>
										<div class="12u$">
											<div class="select-wrapper">
												<select name="demo-category" id="demo-category">
													<option value="">- Curso -</option>
													<option value="1">RSE</option>
													<option value="1">Biologia 1</option>
													<option value="1">Psicoogia 1</option>
													<option value="1">Programación</option>
												</select>
											</div>
										</div>						
										<div class="12u$">
											<ul class="actions">
												<li><input type="submit" value="Registrar" class="special" /></li>
												<li><input type="reset" value="Cancelar"/></li>
											</ul>
										</div>
									</div>
								</form>
							</section>
					</section>
			</div>
		</section>
		

		<!-- Footer -->
		<section id="footer">
			<ul class="icons">
				<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
				<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
				<li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
				<li><a href="#" class="icon alt fa-envelope"><span class="label">Email</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</section>

		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/skel.min.js"></script>
		<script src="assets/js/util.js"></script>
		<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
		<script src="assets/js/main.js"></script>

	</body>
</html>