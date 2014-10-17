<?php

class ImovelPerfil extends AppModel {
	
	public $name = "ImovelPerfil";

	public $useTable = 'imovel_perfil';

	public $primaryKey = 'co_imovel';

	public $hasOne = array(
		'Imovel' => array(
			'className' => 'Imovel',
			'joinTable' => 'imovel',
			'foreignKey' => 'co_imovel',
		),
		'Perfil' => array(
			'className' => 'Perfil',
			'joinTable' => 'perfil',
			'foreignKey' => 'co_perfil',
		),
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
		),
		'TipoImovel' => array(
			'className' => 'TipoImovel',
			'joinTable' => 'tipo_imovel',
			'foreignKey' => 'tipo_imovel_id',
		),
		'FaixaPreco' => array(
			'className' => 'FaixaPreco',
			'joinTable' => 'faixa_preco',
			'foreignKey' => 'co_faixa_preco',
		),
		'RegionaisBairro' => array(
			'className' => 'RegionaisBairro',
			'joinTable' => 'regionais_bairro',
			'foreignKey' => 'co_regionais',
		)
	);


}
?>