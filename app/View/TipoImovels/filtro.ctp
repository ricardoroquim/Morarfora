<nav class="nav navbar-filtro" role="navigation">
	<div class="navbar-collapse collapse">
		<?php echo $this->Form->create("Filtro");?>
			<ul class="nav navbar-nav">
				<li class="filtro-nlg">
					<?php echo $this->Form->input('tipoimovels', array('type'=>'select','options'=>$tipoimovel, 'label'=>false, 'empty'=>'Category')); ?>
				</li>
				<li class="nav navbar-nav navbar-right">	
					<?php echo $this->Form->end('Buscar');?>
				</li>
			</ul>
	</div>
</nav>
