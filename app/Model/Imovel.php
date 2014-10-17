<?php

class Imovel extends AppModel {
	
	public $name = "Imovel";

	public $useTable = 'imovel';

	public $primaryKey = 'co_imovel';

	public $hasOne = array(
		'TipoImovel' => array(
			'className' => 'TipoImovel',
			'joinTable' => 'tipo_imovel',
			'foreignKey' => 'tipo_imovel_id',
		)
	);

}
?>