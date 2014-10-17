<?php

class PerfilsController extends AppController{

public $helpers = array ('Html','Form');

	public function index() {
		$perfils = $this->Perfil->find('all');
		$this->set('perfils', $perfils);
	}

	function filtro() {

		$this->set('perfil', $this->Perfil->TipoMoradia->find('list', array('fields'=>array('descricao'))));
    }
}

?>