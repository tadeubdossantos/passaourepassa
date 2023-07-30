<?php 
	include('includes/header.php');
?>
	<!-- Tela inicial -->
	<div class="tela" id="round-03">
		<button class="btn" onclick="iniciarJogo();">Prosseguir</a>
	</div>	
	
	<!--- Tela da pergunta -->
	<div class="tela" id="round-03-iniciado" style="display:none;" round="3">
		<div id="container">
			<div id="disciplina"><span>Disciplina:</span><p id="disciplinavalue"></p></div>
			<div id="cronometro"><span>Cronômetro:</span><p id="conometrovalue">10<p></div>
			<span id="numQuestao">1</span>
			<div id="pergunta">
				<h1 id="questao">Você está em qual país?</h1>	
			</div>
			<div id="alternativas">
				<ul>
					<li><p onclick="escolher(this);" id="a"></p></li>
					<li><p onclick="escolher(this);" id="b"></p></li>
					<li><p onclick="escolher(this);" id="c"></p></li>
					<li><p onclick="escolher(this);" id="d"></p></li>
					<li style="display:none"><p id="correta"></p></li>					
				</ul>
			</div>
			<div style="margin-bottom:20px;">
				<button onclick="ativarConometro();">Ativar Conômetro</button>
				<button onclick="confirmar(this);">Confirma</button>
			</div>
			<div id="equipe-1"><span>Equipe 1:</span></div>
			<div id="equipe-2"><span>Equipe 2:</span></div>
		</div>	
	</div>

	<!-- Tela de meme correta-->
	<div class="tela" id="meme-correta" style="display:none">
		<div class="meme">
			<img src="">
		</div>
	</div>

	<!-- Tela de meme errado-->
	<div class="tela" id="meme-errada">
		<div class="meme">
			<img src="">
		</div>
	</div>

	<!-- <div class="tela" style="display:none;"></div> -->
<?php
	include('includes/footer.php');	