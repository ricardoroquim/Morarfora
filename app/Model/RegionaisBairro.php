<?php

class RegionaisBairro extends AppModel {
	
	public $name = "RegionaisBairro";

	public $useTable = "regionais_bairro";

	public $primaryKey = "co_regionais";

	public $belongsTo = array(
        'ImovelPerfil' => array(
            'className' => 'ImovelPerfil',
            'foreignKey' => 'co_regionais'
        )
    );

}

