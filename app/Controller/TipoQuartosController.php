<?php

class TipoQuartosController extends AppController{

public $helpers = array ('Html','Form');

	public function index() {
		
		$this->set('tipoQuartos', $this->TipoQuarto->find('all'));
	}

	function filtro() {

        $tipoquarto = $this->TipoQuarto->find('list', array('fields'=>array('descricao')));
        $this->set('tipoquarto', $tipoquarto);

        if ($this->request->is('requested')) {   //Se for requisição de outra view/element:
            return $tipoquarto;
        } else {  //Senão envia para a view padrão
            $this->set('tipoquarto', $tipoquarto);
        }
    }
}

?>