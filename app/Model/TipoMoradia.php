<?php

class TipoMoradia extends AppModel {
	
	public $name = "TipoMoradia";

	public $useTable = "tipo_moradia";

	public $primaryKey = "co_tipo_moradia";

	public $belongsTo = array(
        'Perfil' => array(
            'className' => 'Perfil',
            'foreignKey' => 'co_tipo_moradia'
        ),
        'ImovelPerfil' => array(
            'className' => 'ImovelPerfil',
            'foreignKey' => 'co_tipo_moradia'
        )
    );

}

