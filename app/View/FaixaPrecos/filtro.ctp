<nav class="nav navbar-filtro" role="navigation">
		<div class="navbar-collapse collapse">
		<?php echo $this->Form->create("Filtro");?>
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
					<?php echo $this->Form->end('Buscar');?>
				</li>
			</ul>
		</form>
	</div>
</nav>
