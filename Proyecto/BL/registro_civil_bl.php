<?php
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
			include("../clases/estudiante.php");
			$personas = consulta_personas($cedula);
			foreach ($personas as $per) 
			{
				$e = new estudiante();
				$e->set_nombre($per["NOMBRES"]);
				$e->set_apellido($per["APELLIDOS"]);
				$e->set_CI($per["CI"]);
				$e->set_edad($per["FECHA_NAC"]);	
				$estudiantes[]=$e;				
			}
			return $estudiantes;
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
			foreach ($personas as $per) 
			{
				$fecha_nac = $per["FECHA_NAC"];			
			}
			return diferencia_anios($fecha_nac);
		}
	}

	function diferencia_anios($fecha){
		$fechainicial = new DateTime($fecha); //fecha recibida
		$actual = date("Y-m-d",time());
		$fechafinal = new DateTime($actual); //fecha actual

		$diferencia = $fechainicial->diff($fechafinal); //diferencia entre fechas
		return $diferencia->y; 
	}
?>