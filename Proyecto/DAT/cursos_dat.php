<?php
	if (!function_exists('consulta_cursos')){
	  function consulta_cursos($edad)
	  	{
			$cursos = "SELECT ID_CURSO, NOMBRE_CURSO FROM cursos JOIN categoria_curso on cursos.ID_CATEGORIA=categoria_curso.ID_CATEGORIA WHERE '$edad' BETWEEN RANGO_INICIO and RANGO_FIN";
			$resultado= mysql_query($cursos);
			while ($row  = mysql_fetch_array($resultado,MYSQL_ASSOC))
			{
			  $total_cursos[]=$row;
			}
			return $total_cursos;
		}
	}
?>

