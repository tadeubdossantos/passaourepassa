<?php
	include('conexao.php');
	
	if($_POST['id']){
		//Obter as perguntas no banco
		$stmt = $conn->prepare('select * from questao where id = '.$_POST['id']);
	 	$stmt->execute();
	 	$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
	 	$pergunta = $stmt->fetchAll();
	 	echo json_encode($pergunta);
	 }
	 else echo -1;
 	