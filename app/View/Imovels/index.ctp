
<?php foreach ($imovels as $imovel): ?>
<div class="col-md-3">
	<div class="thumbnail">
        <div class="caption">
			<h3>R$ <?php echo $imovel['Imovel']['Valor_Aluguel']; ?></h3>
			<p><span style="font-weight: 700">Tipo:</span> <?php echo $imovel['TipoImovel']['descricao']; ?></p>					
        </div>
        <a data-toggle="modal" data-target="#imovel" class="btn btn-group-justified"><div class="bgverde btn-primary"><span class="glyphicon glyphicon-search"></span>  Mais detalhes</div></a>
    </div>
</div>
<?php endforeach; ?>

