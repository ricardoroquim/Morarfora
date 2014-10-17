<?php

class Perfil extends AppModel {
	
	public $name = "Perfil";

	public $useTable = 'perfil';

	public $primaryKey = 'co_perfil';

	public $hasOne = array(
		'TipoMoradia' => array(
			'className' => 'TipoMoradia',
			'joinTable' => 'tipo_moradia',
			'foreignKey' => 'co_tipo_moradia',
		),
		'Bairro' => array(
			'className' => 'Bairro',
			'joinTable' => 'bairros',
			'foreignKey' => 'co_bairros',
		),
		'TipoQuarto' => array(
			'className' => 'TipoQuarto',
			'joinTable' => 'tipo_quartos',
			'foreignKey' => 'co_tipos_quartos',
		)
	);

	public $belongsTo = array(
        'ImovelPerfil' => array(
            'className' => 'ImovelPerfil',
            'foreignKey' => 'co_perfil'
        ),
    );

	}
?>