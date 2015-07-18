<?php
include("../BL/cursos_bl.php");
include("../BL/registro_civil_bl.php");
include("../clases/estudiante.php");

if(!isset($_GET["cedula"])){
	$cedula = $_POST["cedula"] = "";
	$email = $_POST["email"] = "";
	$cursos = $_POST["cursos"] = "";
} else{
	echo $cedula = $_POST["cedula"];
	echo "<br>";
	echo $email = $_POST["email"];
	echo "<br>";
	echo $cursos = $_POST["cursos"];
	$mensaje = validar_cedula($_POST["cedula"]);
}

echo "Estado de cedula: ".$mensaje;
echo "<br>";
echo diferencia_anios("1995-09-05");
function diferencia_anios($fecha){
	$fechainicial = new DateTime($fecha); //fecha recibida
	$actual = date("Y-m-d",time());
	$fechafinal = new DateTime($actual); //fecha actual

	$diferencia = $fechainicial->diff($fechafinal); //diferencia entre fechas
	return $diferencia->y; 
}

$e = new estudiante();
// $e = obtener_persona($_POST["cedula"]);
$e->set_nombre("Alexander");
$nombre = $e::get_nombre();
echo $nombre;


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