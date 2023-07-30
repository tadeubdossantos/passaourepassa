<?php
	//Alteramos o cabeçalho para não gerar cache do resultado
	// header('Cache-Control: no-cache, must-revalidate'); 
	//Alteramos o cabeçalho para que o retorno seja do tipo JSON
	// header('Content-Type: application/json; charset=utf-8')

	session_start();
	if(isset($_SESSION['jogo'])) 
		echo json_encode($_SESSION['jogo']);
	

