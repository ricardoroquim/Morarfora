<?php

class ImovelsController extends AppController{

public $helpers = array ('Html','Form');

public function index() {
		$imovels = $this->Imovel->find('all');
		if ($this->request->is('requested')) {   //Se for requisição de outra view/element:
            return $imovels;
        } else {  //Senão envia para a view padrão
            $this->set('imovels', $imovels);
        }
	}
}

?>