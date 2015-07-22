<?php
	if (!function_exists('lista_cursos')){
		function lista_cursos($edad)
		{		
			foreach (glob("../DAT/*.php") as $filename)
			{
				include $filename;
			}
			$cursos = consulta_cursos($edad);
			return $cursos;
		}
	}
?>