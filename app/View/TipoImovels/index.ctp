<h2>Lista Imóveis</h2>
<table class="table table-striped">
<?php foreach ($tipoImovels as $tipoImovel): ?>
	<tr>
	<td><?php echo $tipoImovel['TipoImovel']['descricao']; ?></td>
	</tr>
<?php endforeach; ?>
</table>