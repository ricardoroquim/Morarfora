<?php $faixapreco = $this->requestAction('FaixaPrecos/filtro'); ?>
<?php $regional = $this->requestAction('RegionaisBairros/filtro'); ?>
<?php $bairro = $this->requestAction('Bairros/filtro'); ?>
<?php $tipoquarto = $this->requestAction('TipoQuartos/filtro'); ?>
<?php $tipomoradia = $this->requestAction('TipoMoradias/filtro'); ?> 

<nav class="nav navbar-filtro" role="navigation">
		<div class="navbar-collapse collapse">
		<form action="resultadobuscanlg.php" method="post" enctype="multipart/form-data">
			<ul class="nav navbar-nav">
				<li class="filtro-nlg">
					<?php echo $this->Form->input('faixapreco', array('type'=>'select','options'=>$faixapreco, 'label'=>false, 'empty'=>'Faixa de preço')); ?>	
				</li>
				<li class="filtro-nlg">
					<?php echo $this->Form->input('regional', array('type'=>'select','options'=>$regional, 'label'=>false, 'empty'=>'Regional')); ?>	
				</li>
				<li class="filtro-nlg">
					<?php echo $this->Form->input('bairro', array('type'=>'select','options'=>$bairro, 'label'=>false, 'empty'=>'Bairro')); ?>	
				</li>
				<li class="filtro-nlg">
					<?php echo $this->Form->input('tipoquarto', array('type'=>'select','options'=>$tipoquarto, 'label'=>false, 'empty'=>'Tipo de quarto')); ?>	
				</li>
				<li class="filtro-nlg">
					<?php echo $this->Form->input('tipomoradia', array('type'=>'select','options'=>$tipomoradia, 'label'=>false, 'empty'=>'Perfil')); ?>	
				</li>
				<li class="nav navbar-nav navbar-right">
					<input type="submit" name="acao" value="BUSCAR" class="btn btn-sm btn-action"/>
				</li>
			</ul>
		</form>
	</div>
</nav>
