<?php
	include("../clases/estudiante.php");
	if (!function_exists('validar_cedula')){
		function validar_cedula($cedula)
		{		
			foreach (glob("../DAT/*.php") as $filename)
			{
				include $filename;
			}

			$personas = consulta_personas($cedula);
			if (count($personas)>0) {
				return $mensaje = "La persona consta en el registro civil";
			} else {
				return $mensaje = "La persona NO consta en el registro civil";
			}
			return $mensaje;
		}
	}

	if (!function_exists('obtener_persona')){
		function obtener_persona($cedula)
		{		
			foreach (glob("../DAT/*.php") as $filename)
			{
				include $filename;
			}

			$personas = consulta_personas($cedula);
			$e = new estudiante();
			$e->set_nombre("Alexander"); 
			return $e;
		}
	}

	if (!function_exists('calcular_edad')){
		function calcular_edad($cedula)
		{		
			foreach (glob("../DAT/*.php") as $filename)
			{
				include $filename;
			}

			$personas = consulta_personas($cedula);
			if (count($personas)>0) {
				return $mensaje = "La persona consta en el registro civil";
			} else {
				return $mensaje = "La persona NO consta en el registro civil";
			}
			return $mensaje;
		}
	}
?>