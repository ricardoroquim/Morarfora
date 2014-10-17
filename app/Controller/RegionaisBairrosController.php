<?php

class RegionaisBairrosController extends AppController{

	public $helpers = array ('Html','Form');

	public function index() {
		$regionais = $this->RegionaisBairro->find('all');
		$this->set('regionais', $regionais);
	}

	function filtro() {

	    $regional = $this->RegionaisBairro->find('list', array('fields'=>array('descricao')));
	    $this->set('regional', $regional);

	    if ($this->request->is('requested')) {   //Se for requisição de outra view/element:
	        return $regional;
	    } else {  //Senão envia para a view padrão
	        $this->set('regional', $regional);
	    }
	}
}

?>