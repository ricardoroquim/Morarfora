<?php

class FaixaPrecosController extends AppController{

	public $helpers = array ('Html','Form');

	public function index() {
		$faixas = $this->FaixaPreco->find('all');
		$this->set('faixas', $faixas);
	}

	function filtro() {

	    $faixapreco = $this->FaixaPreco->find('list', array('fields'=>array('descricao')));
	    $this->set('faixapreco', $faixapreco);

	    if ($this->request->is('requested')) {   //Se for requisição de outra view/element:
	        return $faixapreco;
	    } else {  //Senão envia para a view padrão
	        $this->set('faixapreco', $faixapreco);
	    }
	}
}

?>