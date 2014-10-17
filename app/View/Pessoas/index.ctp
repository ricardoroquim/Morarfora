<h2>Lista Pessoas</h2>
<?php foreach ($pessoas as $pessoa): ?>
	<p><?php echo $pessoa['Pessoa']['nome']; ?></p>
<?php endforeach; ?>