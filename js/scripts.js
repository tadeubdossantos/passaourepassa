var audio = null;
var numQuestao = 0;
var numRound = 0;

$(document).ready(function(){
	escolher();
	ativarSom();
	loadTela();	
});

//Obtém o número do round
function getNumRound(){
	numRound = parseInt($('div.tela[round]').attr('round'));	
	console.log('Round: 0'+numRound);		
}

//Sair do jogo (fecha a tela)
function sair(){
	if(!confirm("Deseja realmente sair do jogo?")) return close();	
}

//Escolher uma alternativa
function escolher(e){
	$('div#alternativas ul li p').css('background','white').css('color','black')
		.removeAttr('escolhido');
	$(e).css('background','#606060').attr('escolhido','').css('color','white');	
	console.log('Alternativa escolhida: '+$(e).attr('id'));	
}

//Confirmar a alternativa escolhida
function confirmar(e){
	console.log('resposta correta: '+$('#correta').html());
	
	if(($('#alternativas ul li').find('p[escolhido]')).length){
		var correta = $('#alternativas ul li p[escolhido]').attr('id');
		console.log('resposta escolhida: '+correta); 
		var idRoundIniciado = $(e).parent().parent().parent().attr('id');
		
		//Resposta correta
		if(correta === $('#correta').text()){
			console.log('Resposta Correta!');
			alert('Resposta Correta!');
			//Sorteio de meme 
			var indice = Math.floor(Math.random() * 4);
			console.log('Sorteio do meme: '+indice);
			$('.tela').fadeOut(1000);
			$('.tela#meme-correta').fadeIn(1000);
			$('.tela#meme-correta img').attr('src','img/memes/corretas/0'+indice+'.gif');
			
			setTimeout(function(){
				$('.tela').fadeOut(1000);
				$(`#${idRoundIniciado}`).fadeIn(1000);
				$('div#alternativas ul li p').css('background','white').css('color','black')
					.removeAttr('escolhido');
				numQuestao++;
				console.log('Foi incrementado o número da questão: '+numQuestao);
				if(numQuestao >= 5){//Fim do round 
					alert(`Acabou o Round ${numRound}!`);
					numRound++;
					if (numRound > 3) window.location.href = 'the_end.php';					
					else window.location.href = `round-0${numRound}.php`;
				}
				exibirQuestao(numQuestao, numRound);				
			},5000);
		}
		else{//Resposta incorreta
			console.log('Resposta Incorreta!');
			alert('Resposta Incorreta!');
			//Sorteio de meme
			var indice = Math.floor(Math.random() * 4);
			console.log('Sorteio do meme: '+indice);
			$('.tela').fadeOut(1000);
			$('.tela#meme-errada').fadeIn(1000);
			$('.tela#meme-errada img').attr('src','img/memes/erradas/0'+indice+'.gif');
			
			setTimeout(function(){
				$('.tela').fadeOut(1000);
				$(`#${idRoundIniciado}`).fadeIn(1000);
				$('div#alternativas ul li p').css('background','white').css('color','black').removeAttr('escolhido');
				numQuestao++;
				console.log('Foi incrementado o número da questão: '+numQuestao);
				if(numQuestao >= 5){//Fim do round
					alert(`Acabou o Round ${numRound}!`);
					numRound++;
					if (numRound > 3) window.location.href = 'the_end.php';					
					else window.location.href = `round-0${numRound}.php`;	
				}
				exibirQuestao(numQuestao, numRound);				
			},5000);
		}

	}
}

//Remover uma alternativa selecionada
function rmselecionada(){
	$('div#alternativas li').css('background','white').css('color','black');
}

// //Iniciar o jogo a partir do round 01
// function loadPlay(){
// 	$('.tela').fadeOut(1000);
// 	$('#round-01').fadeIn(1000);
// 	audio.pause();
// 	$('audio').attr('src','midia/round.mp3');
// 	$('audio').play();	
// }


function loadpergunta(){
	
	//Pára qualquer música que esteja tocando
	audio = document.querySelector('audio');
	audio.pause();

	$('.tela').fadeOut(1000);
	$('#pergunta').fadeIn(1000);
}

//Parte da página de instruções
function loadinstrucoes(){
	window.location.href = 'instrucoes.php';
	$('audio').attr('src','midia/round.mp3');
	$('audio').play();
}

//Controle do som
function ativarSom(){
	document.onkeyup = function(e){
		//Ativa o som
		if(e.which == 83){
			console.log('Som ativado!');
			if($('#inicio').length) $('audio').attr('src','midia/intromusic.mp3');
			if($('#instrucoes').length) $('audio').attr('src','midia/intrucoes.mp3');
			if($('#round-01').length) $('audio').attr('src','midia/round.mp3');
			if($('#round-02').length) $('audio').attr('src','midia/round.mp3');
			if($('#round-03').length) $('audio').attr('src','midia/round.mp3');

			if(!$('audio').attr('src')) alert('Houve algum problema para ativar o som!');

			(document.querySelector('audio')).play();
		}//Desativa o som
		else if(e.which == 80){
			console.log('Som desativado!');
			document.querySelector('audio').pause();
		}
	}
}

//Efeito de carregamento da div cuja class é '.tela'
function loadTela(){
	$('.tela').fadeIn(2000);
	if($('#round-01-iniciado').length) $('#round-01-iniciado').css('display','none');
	if($('#round-02-iniciado').length) $('#round-02-iniciado').css('display','none');
	if($('#round-03-iniciado').length) $('#round-03-iniciado').css('display','none');
}

var perguntas = null;

function iniciarJogo(){
	console.log('Iniciou o jogo!');
	$('.tela').fadeOut(2000);
	getNumRound();
	$(`#round-0${numRound}-iniciado`).fadeIn(2000);
	$('audio').attr('src','midia/round-iniciado.mp3');
	var audio = document.querySelector('audio');
	audio.play();
	
	$.get('includes/controle_jogo.php',function(data){
		console.log('pesquisou perguntas');
		console.log(perguntas);
		perguntas = JSON.parse(data);
		console.log(perguntas);
		// console.log(perguntas);
		// console.log(perguntas['round-01']);
		// console.log(perguntas['round-01'][0]);
		// console.log(perguntas['round-01'][0]['id']);
		// console.log(perguntas['round-01'][0]['disciplina']);
		exibirQuestao(numQuestao, numRound);
	})
}

function exibirQuestao(numQuestao, numRound){
	var pergunta = perguntas[`round-0${numRound}`][numQuestao];
	console.log(pergunta);
	var numPergunta = numQuestao;
	numPergunta++; 
	console.log('Numero da Questão: '+numPergunta);
	console.log('Numero do Round: '+numRound);
	$('#numQuestao').val(numQuestao);
	$('#disciplinavalue').text(pergunta['disciplina']);
	$('#questao').text(pergunta['pergunta']);
	$('#a').text(pergunta['a']);
	$('#b').text(pergunta['b']);
	$('#c').text(pergunta['c']);
	$('#d').text(pergunta['d']);
	$('#correta').text(pergunta['correta']);	
}

var seconds = null;

function ativarConometro(){
	seconds = 10;
	var interval = setInterval(function(){
		seconds--;
		if(seconds > -1) $('#conometrovalue').html(seconds);			
		else{ 
			$('#conometrovalue').html(10);
			clearInterval(interval);
		}
	},1000)
}