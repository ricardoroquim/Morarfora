<?php

class BairrosController extends AppController{

	public $helpers = array ('Html','Form');

	public function index() {
		$bairros = $this->Bairro->find('all');
		$this->set('bairros', $bairros);
	}

	function filtro() {

	    $bairro = $this->Bairro->find('list', array('fields'=>array('descricao')));
	    $this->set('bairro', $bairro);

	    if ($this->request->is('requested')) {   //Se for requisição de outra view/element:
	        return $bairro;
	    } else {  //Senão envia para a view padrão
	        $this->set('bairro', $bairro);
	    }
	}
}

?>