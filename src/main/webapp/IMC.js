function calcula_imc() {
        var altura = parseFloat(document.formulario.altura.value);
        var peso = parseFloat(document.formulario.peso.value);

        var quadrado = (altura * altura);

        var calculo = (peso / quadrado);

        calculo = calculo.toFixed(2);

        if (calculo < 18.5) {
            alert("Você está magro (abaixo do peso) com esse indice: " + calculo);
        }
        else if (calculo >= 18.5 && calculo < 24.9) {
            alert("Você está normal com esse indice: " + calculo);
        }

        else if (calculo >= 25 && calculo < 29.9) {
            alert("Você está com sobre peso com esse indice: " + calculo);
        }
        else if (calculo >= 30 && calculo < 39.9) {
            alert("Você está com obesidade com esse indice: " + calculo);
        }
        else if (calculo > 40)
            alert("Você estácom obesidade grave com esse indice: " + calculo);
    }