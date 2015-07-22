<?php
	if (!function_exists('consulta_tipo_pago')){
	  function consulta_tipo_pago()
	  	{
	  	include ("conect.php");	
		$SQL= "SELECT * FROM tipo_pago ORDER BY ID_TIPO_PAGO ASC";
		$resultado= mysql_query($SQL);

		while ($row  = mysql_fetch_array($resultado,MYSQL_ASSOC))
		{
		  $tipo_pago[]=$row;

		}
		return $tipo_pago;
		}
	}

	if (!function_exists('consultar_precio_curso')){
	  function consultar_precio_curso($ID_CURSO)
	  	{
		  	include ("conect.php");
			$SQL= "SELECT PRECIO FROM CURSOS WHERE ID_CURSO='".$ID_CURSO."'";
			$resultado= mysql_query($SQL);
			$monto  = mysql_fetch_array($resultado,MYSQL_ASSOC);
			return $monto;
		}
	}

	//Se inserta nuevo estudiante si no existe en la base
	if (!function_exists('registrar_estudiante')){
	  function registrar_estudiante($CI, $NOMBRES, $APELLIDOS, $FECHA_NAC, $EMAIL)
	  	{
			include("conect.php");
	  		$SQL = "SELECT CI FROM ESTUDIANTES WHERE CI ='".$CI."'"; 
			$resultado = mysql_query($SQL);
			$id  = mysql_fetch_array($resultado,MYSQL_ASSOC);
			if (!is_array($id)) 
			{	
				echo "Dentro";
				$SQL = "INSERT INTO ESTUDIANTES (CI, NOMBRES, APELLIDOS, FECHA_NAC, E_MAIL) VALUES ('".$CI."','".$NOMBRES."','".$APELLIDOS."','".$FECHA_NAC."','".$EMAIL."')"; 
				$resultado = mysql_query($SQL) or die(mysql_error($link));
			}
		}
	}

	if (!function_exists('registrar_matricula')){
	  function registrar_matricula($CI, $ID_CURSO)
	  	{
	  		include("conect.php");
			$SQL = "INSERT INTO matriculas (CI, ID_CURSO) VALUES ('".$CI."','".$ID_CURSO."')"; 
			$resultado = mysql_query($SQL) or die(mysql_error($link));
		}
	}

?>