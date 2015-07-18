<?php
include("../BL/cursos_bl.php");
include("../BL/registro_civil_bl.php");
include("../clases/estudiante.php");

if(!isset($_GET["cedula"])){
	$cedula = $_POST["cedula"] = "";
	$email = $_POST["email"] = "";
	$cursos = $_POST["cursos"] = "";
} else{
	$cedula = $_POST["cedula"];
	$email = $_POST["email"];
	$cursos = $_POST["cursos"];
	$mensaje = validar_cedula($_POST["cedula"]);
	echo "Estado de cedula: ".$mensaje;
}

if(isset($_GET["cedula"])){
	$estudiantes = obtener_persona($_POST["cedula"]);
	echo "<br>";
	// var_dump($e);
	foreach ($estudiantes as $est) {
		$e = $est;
		$e->set_edad(calcular_edad($_POST["cedula"]));
		echo "Nombre: ".$e->get_nombre()."<br>";
		echo "Apellido: ".$e->get_apellido()."<br>";
		echo "Cedula: ".$e->get_CI()."<br>";
		echo "Edad: ".$e->get_edad()."<br>";
	}
}


echo "<h2>Registro de cursos</h2>";
echo "<form name=form action=".$_SERVER['PHP_SELF']."?cedula=1111 method='post'>";
	echo "<table>";
		echo "<tr><th><h4>Cedula de Identidad</th><td><input type='text' name=cedula value='$cedula'></td></tr>";
		echo "<tr><th><h4>Correo</th><td><input type='email' name=email value='$email'></td></tr>"; 
		echo "<tr><th><h4>Cursos</th><td>";
		$cursos = lista_cursos();
		echo "<select name=cursos>";   
		    foreach ($cursos as $curso)
		    {
		        echo "<option value='".$curso["NOMBRE_CURSO"]."'>".$curso["NOMBRE_CURSO"]."</option>";
		    }
		echo "</select></td></tr>";
	echo "</table><br><br>";
	echo "<input type='submit' value='Validar'>";
echo "</form>";

?>

<!-- <form action="demo_form.asp" method="get">
  <input list="browsers" name="browser">
  <datalist id="browsers">
    <option value="Internet Explorer">
    <option value="Firefox">
    <option value="Chrome">
    <option value="Opera">
    <option value="Safari">
  </datalist>
  <input type="submit">
</form> -->