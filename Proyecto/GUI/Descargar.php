<?php
	include("cabecera.php");
	include("../BL/matricula_bl.php");
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
						<!-- 						<h5>Descargar</h5> -->
						<header class="major special">
							<h5>Descargar</h5>
						</header>
							<div class="table-wrapper">
								<table class="alt">
									<thead>
										<tr>
											<th>Cédula</th>
											<th>Nombre</th>
											<th>Apellido</th>
											<th>E-mail</th>
										</tr>
									</thead>
									<tbody>
									<?php
											$estudiantes = consultar_lista($_SESSION["cuenta"]);
											if (is_array($estudiantes)) {
												foreach ($estudiantes as $est) {
													$e = $est;
													// print_r($e);
													echo "<tr>";
													echo "<td>".$e->get_CI()."</td>";
													echo "<td>".$e->get_nombre()."</td>";
													echo "<td>".$e->get_apellido()."</td>";
													echo "<td>".$e->get_correo()."</td>";
													echo "</tr>";
												}
											}
									?>
									</tbody>
<!-- 									<tfoot>
										<tr>
											<td colspan="2"></td>
											<td>100.00</td>
										</tr>
									</tfoot> -->
								</table>
							</div>
						
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