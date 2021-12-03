<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
</head>
<body>

<script type="text/javascript" language="JavaScript">

/* Função para inserir registro na tabela, garantindo que será preenchida 
 * corretamente*/
 
 
	function inserirRegistro(){
		var disciplina = document.getElementById("inputDisciplina").value
		var nota = document.getElementById("inputNota").value

		var tabela = document.getElementById("registros")

		var linhasTotais = tabela.rows.length


		var novaLinha = tabela.insertRow(linhasTotais)
		
		if (nota.length == 0){
			window.alert('Nota inválida')
			
		}else{
			
		
		var novaCelulaDisciplina = novaLinha.insertCell(0)

		var novaCelulaNota = novaLinha.insertCell(1)
		
		var novaSit = novaLinha.insertCell(2)

		novaCelulaDisciplina.innerHTML = disciplina
		novaCelulaNota.innerHTML = nota
		
		/* Condicional para garantir as regras de negócio de acordo com a nota
		cadastrada */
		
		if(nota <5){
			novaSit.innerHTML = 'Reprovado'
		}else{
			novaSit.innerHTML = 'Aprovado'
		}
		
		}
	}




	/* Função para garantir que a nota cadastrada estará dentro dos critérios 
	pré estabelecidos */


	function validacao_nota(){
		var nota = document.getElementById("inputNota")
		var num = [1,2,3,4,5,6,7,8,9,0]
		if(nota.value > 10){

			nota.value = 10
		}
		if (nota.value < 0  ){
			nota.value = 0
		}
		
		if (nota.value > 0 || nota.value < 10){
			nota.value = nota.value
		}
		
		
	}



	
	// Função que monta Mês, Dia, e Ano para exibir no HTML
	// Declaração de Variaveis que receberam os valores:

	var now = new Date();
	var hours = now.getHours();
	var minutes = now.getMinutes();
	var timeValue = "" + ((hours >12) ? hours -12 :hours)

	//Tratamento quantidade de Digitos nos Minutos e exibi se é 
	// dia ou noite, PM, AM.

	timeValue += ((minutes < 10) ? ":0" : ":") + minutes
	timeValue += (hours >= 12) ? " PM" : " AM"
	timerRunning = true;
	mydate = new Date();
	myday = mydate.getDay();
	mymonth = mydate.getMonth();
	myweekday = mydate.getDate();
	weekday = myweekday;
	myyear = mydate.getYear();
	year = myyear;

	// Tratamento dos Dias da Semana

	if(myday == 0)
		day = " Domingo, "

	else if(myday == 1)
		day = " Segunda Feira, "

	else if(myday == 2)
		day = " Terça Feira, "

	else if(myday == 3)
		day = " Quarta Feira, "

	else if(myday == 4)
		day = " Quinta Feira, "

	else if(myday == 5)
		day = " Sexta Feira, "

	else if(myday == 6)
		day = " Sábado, "

	//Tratamento dos Meses

	if(mymonth == 0)
		month = " de Janeiro de "

	else if(mymonth ==1)
		month = " de Fevereiro de "

	else if(mymonth ==2)
		month = " de Março de "

	else if(mymonth ==3)
		month = " de April de "

	else if(mymonth ==4)
		month = " de Maio de "

	else if(mymonth ==5)
		month = " de Junho de "

	else if(mymonth ==6)
		month = " de Julho de "

	else if(mymonth ==7)
		month = " de Agosto de "

	else if(mymonth ==8)
		month = " de Setembro de "

	else if(mymonth ==9)
		month = " de Outubro de "

	else if(mymonth ==10)
		month = " de Novembro de "

	else if(mymonth ==11)
		month = " de Dezembro de "

	//Exibe na Pagina o Resultado concatenando(+) os valores

	document.write( day + myweekday + month + year + " - " + timeValue);
	</script>


	<h2>Boas vindas Professor</h2>
    	Disciplina <input type="text" id="inputDisciplina" placeholder="Disciplina">
    	<br>
    	<br>
    	Nota <input type="number" id="inputNota" placeholder="NOTA" onkeyup="validacao_nota()">
    	<input type="button"/ value="inserir registro" onclick="inserirRegistro()"> 
    	<table id="registros" border="1">
    		<tr>
    			<th>Disciplina</th>
    			<th>Nota</th>
    			<th>Situação</th>
    		</tr>
    		<tr>
    			<td></td>
    			<td></td>
    			<td></td>
    		</tr>
    	</table>
    	
    	<a href=menu2.jsp>Voltar ao menu</a>
</body>
</html>