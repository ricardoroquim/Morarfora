
<?php foreach ($imovels as $imovel): ?>
<div class="col-md-3">
	<div class="thumbnail">
        <div class="caption">
			<h3>R$ <?php echo $imovel['Imovel']['Valor_Aluguel']; ?></h3>
			<p><span style="font-weight: 700">Bairro:</span> <?php echo $imovel['Bairro']['descricao']; ?></p>
			<p><span style="font-weight: 700">Imóvel:</span> <?php echo $imovel['TipoImovel']['descricao']; ?></p>
			<p><span style="font-weight: 700">Vaga:</span> <?php echo $imovel['TipoQuarto']['descricao']; ?></p>
			<p><span style="font-weight: 700">Gênero:</span> <?php echo $imovel['TipoMoradia']['descricao']; ?></p>							
        </div>
        <a data-toggle="modal" data-target="#imovel" class="btn btn-group-justified"><div class="bgverde btn-primary"><span class="glyphicon glyphicon-search"></span>  Mais detalhes</div></a>
    </div>
</div>
<?php endforeach; ?>

