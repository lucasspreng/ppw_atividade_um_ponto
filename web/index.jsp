<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Nubank</title>
        <link rel="stylesheet" href="assets/css/main.css">
    </head>
    <body>
        <div class="navbar">
            <ul>
                <li><a href="#" class="acessoLeft"><img src="assets/img/padlock_vectorized.png" class="cadeado"><span class="acesseInternetBanking">ACESSE O </span><span class="internetBanking">INTERNET BANKING</span></a></li>
                <li><a href="#" class="loginRight">
                        <form action="processaDadosCliente" method="POST" class="login">

                            <input id="inputAcao" name="inputAcao" type="hidden" value="conta" />

                            <input id="inputAgencia" name="inputAgencia" type="text" class="inputNormal" placeholder="Agência...">
                            <input id="inputConta" name="inputConta" type="text" class="inputNormal" placeholder="Conta...">
                            <input id="inputDigito" name="inputDigito" type="text" class="mini">
                            <input type="submit" value="Entrar" class="submitBtn">

                        </form>
                    </a></li>
            </ul>
        </div>
        <div class="content">
            <p class="infos">
                <span>Sobre o Nubank</span>
                <span>Contato</span>
                <span>Fale Conosco</span>
            </p>
            <p class="semConta">Ainda não possui uma conta</p><br>
            <div class="cliqueAqui">Clique <span style="text-decoration: underline">aqui</span> e faça acesso ao sistema</div>
            <a href="form.jsp"><input type="button" name="sejaCliente" value="Seja nosso cliente" class="sejaCliente"></a>
        </div>

    </body>
</html>
