
<?php foreach ($regionais as $regional): ?>
<div class="col-md-3">
	<div class="thumbnail">
        <div class="caption">
			<p><span style="font-weight: 700">Regional:</span> <?php echo $regional['RegionaisBairro']['descricao']; ?></p>		
        </div>
        <a data-toggle="modal" data-target="#imovel" class="btn btn-group-justified"><div class="bgverde btn-primary"><span class="glyphicon glyphicon-search"></span>  Mais detalhes</div></a>
    </div>
</div>
<?php endforeach; ?>

