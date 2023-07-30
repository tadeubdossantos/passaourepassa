<?php
	session_start();
	include('includes/conexao.php');
	unset($_SESSION['jogo']);
	if(!isset($_SESSION['jogo']) || !$_SESSION['jogo']){
		
		//Obter as perguntas no banco
		$stmt = $conn->prepare('select * from questao');
 		$stmt->execute();
 		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
 		$perguntas = $stmt->fetchAll();
		
 		// Desembaralha os ids das perguntas em cada posição no array (sorteio de perguntas)
 		shuffle($perguntas);
 		
 		if(count($perguntas)<15){ 
 			echo '<b>Não tem perguntas o suficiente para iniciar o jogo! Portanto incluir mais perguntas...</b>';
 			exit;
 		}
 		
 		$rounds = array('round-01' => array(), 'round-02' => array(), 'round-03' => array());
 		$j=0;
 		
 		//Acessando os rounds
 		$indice=0;
 		for($j=0;$j<count($rounds);$j++){ 			
 			//Inclusão das perguntas nos rounds
 			for($i=0;$i<5;$i++){
 				array_push($rounds["round-0".($j+1)], $perguntas[$indice]);
 				$indice++;
 			} 			
 		}

 		//Informando o nome das equipes que vão participar em cada round
 		$rounds['round-01']['equipe01'] = 'Equipe x';
 		$rounds['round-01']['equipe02'] = 'Equipe y';
 		$rounds['round-02']['equipe01'] = 'Equipe w';
 		$rounds['round-02']['equipe02'] = 'Equipe z';
 		
 		$_SESSION['jogo'] = $rounds;

 		//Redireciona para o 1º round
 		exit(header("location: round-01.php"));		  		
	}

