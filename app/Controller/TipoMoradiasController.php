<?php

class TipoMoradiasController extends AppController{

	public $helpers = array ('Html','Form');

	public function index() {
		
		$this->set('tipoMoradias', $this->TipoMoradia->find('all'));
	}

	function filtro() {

	    $tipomoradia = $this->TipoMoradia->find('list', array('fields'=>array('descricao')));
	    $this->set('tipomoradia', $tipomoradia);

	    if ($this->request->is('requested')) {   //Se for requisição de outra view/element:
	        return $tipomoradia;
	    } else {  //Senão envia para a view padrão
	        $this->set('tipomoradia', $tipomoradia);
	    }
	}
}

?>