	/*Documento JS calculo_imc.js
	metodo : calcularIMC
	autor : Maria Adalgisa de Souza
	descrição : Calcula o índice de massa corporal - IMC*/

	function calcularIMC() {
	   var formulario = document.getElementById("formulario");

	   var kilos = parseInt(formulario.kilos.value); /*pode ser usado  o método 
	   parseInt que (transforma a string em um valor numérico) ou o operador
	   unário + esse operador força a conversão (somente em valor positivo*/
	   var metros = +formulario.metros.value;
	   var centimetros = +formulario.centimetros.value;

	   /*alert (typeof(kilos)); exibe o tipo*/
	   var altura = (metros * 100 + centimetros)/100;
	   alert(altura);
	   var imc = kilos / (altura * altura);

	   formulario.imc.value = imc.toFixed(2);/*o método toFixed(2) apresenta o número 
	   de casas decimais desejadas para o valor, nesse caso duas casas*/

	   if (imc <= 20){
	   alert("Abaixo do peso");
	   }else if (imc > 20 && imc <= 25){
	    alert("Peso ideal");

	  }else if (imc > 25 && imc <= 30){
	  alert("Sobrepeso");

	  }else if (imc > 30 && imc <= 35){
	  alert("Obesidade Moderada");

	  }else if (imc > 35 && imc <= 40){
	  alert("Obesidade Severa");

	  }else if (imc > 40 && imc <= 50){
	  alert("Obesidade Mórbida");

	  }else{
	  alert("Super Obesidade");
	  }
	  }
	   /*alert(kilos);
	   alert(metros);
	   alert(centimetros);
	   alert(imc);}*/  
