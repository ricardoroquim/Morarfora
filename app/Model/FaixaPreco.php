<?php

class FaixaPreco extends AppModel {
	
	public $name = "FaixaPreco";

	public $useTable = "faixa_preco";

	public $primaryKey = "co_faixa_preco";

	public $belongsTo = array(
        'ImovelPerfil' => array(
            'className' => 'ImovelPerfil',
            'foreignKey' => 'co_imovel'
        )
    );

}

