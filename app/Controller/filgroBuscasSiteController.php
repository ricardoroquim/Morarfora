<?php
App::uses('AppController', 'Controller');


class filgroBuscasSiteController extends AppController{

	function index() {
    
    // Add filter
    $this->Filter->addFilters(
        array(
            'filter1' => array(
                'User.name' => array('operator' => 'LIKE')
            ),
            'filter2' => array(
                'User.group_id' => array(
                    'select' => $this->Filter->select('Grupo', $this->User->Group->find('list'))
                )
            )
        )
    );
    
    // Define conditions
    $this->Filter->setPaginate('conditions', $this->Filter->getConditions());

    $this->User->recursive = 0;
    $this->set('users', $this->paginate());
}

}