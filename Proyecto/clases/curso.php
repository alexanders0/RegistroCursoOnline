<?php
	class curso{
		var private $nombre_curso;
		var private $hora_inicio;
		var private $hora_fin;
		public function __construct(){			
		} 
		public function __construct2($nombre_curso_n,$hora_inicio_n,$hora_fin_n){
			$this->nombre_curso=$nombre_curso_n;
			$this->hora_inicio=$hora_inicio_n;
			$this->hora_fin=$hora_fin_n;
		} 
		
		public function set_nombre_curso($nombre_curso_n){
			$this->nombre_curso=$nombre_curso_n;
		} 
		public function get_nombre_curso(){
			return $this->nombre_curso;
		} 
		
		public function set_hora_inicio($hora_inicio_n){
			$this->hora_inicio=$hora_inicio_n;
		} 
		public function get_hora_inicio(){
			return $this->hora_inicio;
		} 
		
		public function set_hora_fin($hora_fin_n){
			$this->hora_fin=$hora_fin_n;
		} 
		public function get_hora_fin(){
			return $this->hora_fin;
		} 
	}
?>