<?php
	if (!function_exists('consulta_personas')){
	  function consulta_personas($cedula)
	  	{
		$registro= "SELECT * FROM registro WHERE CI = '$cedula'";
		$resultado= mysql_query($registro);

		while ($row  = mysql_fetch_array($resultado,MYSQL_ASSOC))
		{
		  $personas[]=$row;
		}

		return $personas;
		}
	}
?>