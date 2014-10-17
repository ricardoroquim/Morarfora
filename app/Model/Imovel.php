<?php

class Imovel extends AppModel {
	
	public $name = "Imovel";

	public $useTable = 'imovel';

	public $primaryKey = 'co_imovel';

	public $hasOne = array(
		'TipoImovel' => array(
			'className' => 'TipoImovel',
			'joinTable' => 'tipo_imovel',
			'foreignKey' => 'co_tipo_imovel',
		)
	);

}
?>