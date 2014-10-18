<?php

class Bairro extends AppModel {
	
	public $name = "Bairro";

	public $useTable = "bairros";

	public $primaryKey = "co_bairros";

	public $belongsTo = array(
        'ImovelPerfil' => array(
            'className' => 'ImovelPerfil',
            'foreignKey' => 'co_bairros'
        )
    );

	}
?>