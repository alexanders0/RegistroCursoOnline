<?php
	if (!function_exists('consulta_cursos')){
	  function consulta_cursos()
	  	{
		$cursos= "SELECT * FROM cursos";
		$resultado= mysql_query($cursos);

		while ($row  = mysql_fetch_array($resultado,MYSQL_ASSOC))
		{
		  $total_cursos[]=$row;
		}
		return $total_cursos;
		}
	}
?>