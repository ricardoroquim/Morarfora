<?php

class PessoasController extends AppController{

public $helpers = array ('Html','Form');

public function index() {
		$pessoas = $this->Pessoa->find('all');
		$this->set('pessoas', $pessoas);
	}
}

?>