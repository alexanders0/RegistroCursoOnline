<?php

	if (!function_exists('lista_tipo_pago')){
		function lista_tipo_pago()
		{		
			foreach (glob("../DAT/*.php") as $filename)
			{
				include $filename;
			}
			$tipo = consulta_tipo_pago();
			return $tipo;
		}
	}

	if (!function_exists('consultar_monto')){
		function consultar_monto($ID_CURSO)
		{		
			include ("../DAT/matricula_dat.php");
			$monto = consultar_precio_curso($ID_CURSO);
			return $monto["PRECIO"];
		}
	}

	if (!function_exists('realizar_matricula')){
		function realizar_matricula($estudiante, $ID_CURSO)
		{		
			include ("../DAT/matricula_dat.php");
			include ("../clases/estudiante.php");
			$e = $estudiante;

			registrar_estudiante($e->get_CI(), $e->get_nombre(), $e->get_apellido(), 
				$e->get_fecha_nac(), $e->get_correo());
			registrar_matricula($e->get_CI(), $ID_CURSO);
		}
	}

	if (!function_exists('realizar_pago')){
		function realizar_pago($ID_TIPO_PAGO, $MONTO)
		{		
			include ("../DAT/matricula_dat.php");
			$ID_MATRICULA = consultar_id_matricula();
			registrar_pago($ID_MATRICULA, $ID_TIPO_PAGO, $MONTO);
		}
	}
?>