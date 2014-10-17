<?php

class TipoQuarto extends AppModel {
	
	public $name = "TipoQuarto";

	public $useTable = "tipo_quartos";

	public $primaryKey = "co_tipos_quartos";

	public $belongsTo = array(
        'Perfil' => array(
            'className' => 'Perfil',
            'foreignKey' => 'co_tipos_quartos'
        ),
        'ImovelPerfil' => array(
            'className' => 'ImovelPerfil',
            'foreignKey' => 'co_tipos_quartos'
        )
    );

}
?>