<?php

class TipoImovelsController extends AppController{

public $helpers = array ('Html','Form');

	public function index() {
		
		$this->set('tipoImovels', $this->TipoImovel->find('all'));
	}

	function filtro() {

		$this->set('tipoimovel', $this->TipoImovel->find('list', array('fields'=>array('descricao'))));
    }
}

?>