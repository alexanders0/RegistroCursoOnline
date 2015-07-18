<?php
	if (!function_exists('realizar_matricula')){
	  function realizar_matricula($CI, $ID_PERIODO, $ID_PAGO, $ID_CURSO)
	  	{
	  		include("conect.php");
			$SQL = "INSERT INTO matriculas (CI, ID_PERIODO, ID_PAGO, ID_CURSO) VALUES ('".$CI."','".$ID_PERIODO."','".$ID_PAGO."','".$ID_CURSO."')"; 
			$resultado = mysql_query($SQL) or die(mysql_error($link));
			$resultado = mysql_query($categorias);
		}
	}

?>