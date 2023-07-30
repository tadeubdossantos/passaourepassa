<?php 
	include('includes/header.php');
?>

<audio src="midia/intromusic.mp3"></audio>

<!-- Tela inicial -->
<div class="tela" id="inicio">
	<div style="position:relative;top:300px;">
		<button class="btn" style="display:block;margin:5px auto;" 
			onclick="window.location.href='jogo.php';">Iniciar</button>
		<button class="btn" style="display:block;margin:5px auto;" onclick="loadinstrucoes();">Instruções</button>
		<button class="btn" style="display:block;margin:5px auto;" onclick="sair();">Sair</button>
	</div>
</div>
	
<?php
	include('includes/footer.php');	