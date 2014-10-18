<?php
App::uses('AppController', 'Controller');


class ImovelPerfilsController extends AppController{


    public $helpers = array ('Html','Form');
    public $components = array('Paginator', 'Session');

	public function index() {
		$imovels = $this->ImovelPerfil->find('all');
		if ($this->request->is('requested')) {   //Se for requisição de outra view/element:
            return $imovels;
        } else {  //Senão envia para a view padrão
            $this->set('imovels', $imovels);
        }
	}

    public function add() {
        if ($this->request->is('post')) {
            $this->ImovelPerfil->create();
            if ($this->ImovelPerfil->save($this->request->data)) {
                $this->Session->setFlash(__('The imovel perfil has been saved.'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The imovel perfil could not be saved. Please, try again.'));
            }
        }
    }
}


?>