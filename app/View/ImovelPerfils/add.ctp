<div class="imovelPerfils form">
<?php echo $this->Form->create('ImovelPerfil'); ?>
	<fieldset>
		<legend><?php echo __('Add Imovel Perfil'); ?></legend>
	<?php
		echo $this->Form->input('co_imovel');
		echo $this->Form->input('co_perfil');
		echo $this->Form->input('data_criacao');
		echo $this->Form->input('data_atualizacao');
		echo $this->Form->input('data_cancelamento');
		echo $this->Form->input('bairro', array('type'=>'select','options'=>$bairro, 'label'=>false, 'empty'=>'Bairro')); ?>
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Imovel Perfils'), array('action' => 'index')); ?></li>
	</ul>
</div>
