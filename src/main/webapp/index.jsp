<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cálculo IMC</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">
</head>

<body>
    <div class="col-md-12">
        <div class="modal-dialog" style="margin-bottom:0">
            <div class="modal-content">
                <div class="panel-heading">
                    <h3 class="panel-title">Cálculo de IMC</h3>
                </div>
                <div class="panel-body">
                    <form name="formulario">
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="Altura (em metros)" name="altura" type="text" autofocus="">
                                <br>
                                <input class="form-control" placeholder="Peso (em quilogramas)" name="peso" type="text" autofocus="">
                                <br>
                                <input class="form-control" placeholder="Sexo" name="sexo" type="text" autofocus="">
                            </div>
                            <button class="btn btn-sm btn-success">Calcular</a>
                    </fieldset>
                </form>
            </div>
        </div>
<!-- Scriptlet. Código Java na página JSP. -->
<%
String alturaStr = request.getParameter("altura");
float altura = Float.parseFloat(alturaStr);;

String pesoStr = request.getParameter("peso");
float peso = Float.parseFloat(pesoStr);

float imc;

String mensagem = "";
String tipoMensagem = "";
imc = (float) (peso / Math.pow(altura, 2));
        if (imc < 18.5) {
            mensagem = "Voce esta magro (abaixo do peso) com esse indice: ";
            tipoMensagem = "warning";
        } else if (imc >= 18.5 && imc < 24.9) {
            mensagem = "Voce esta normal com esse indice: ";
            tipoMensagem = "success";
        } else if (imc >= 25 && imc < 29.9) {
            mensagem = "Voce esta com sobre peso com esse indice: ";
            tipoMensagem = "success";
        } else if (imc >= 30 && imc < 39.9) {
            mensagem = "Voce esta com obesidade com esse indice: ";
            tipoMensagem = "warning";
        } else {
            mensagem = "Voce esta com obesidade grave com esse indice: ";
            tipoMensagem = "warning";
        }
%>
      <!-- Utilização de vaviáveis em expressões JSP. -->
      <div class="alert alert-<%=tipoMensagem%>" role="alert" style="margin-top:45px"><%=mensagem%><%=imc%></div>
    </div>
    </div>
  </body>
</html>