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
        <link rel="stylesheet" href="assets/css/sistemaStyle.css">

    </head>

    <body>

        <div class="navbar">

            <ul>
                <li>
                    <a href="#" class="acessoLeft">
                        <img src="assets/img/padlock_vectorized.png" class="cadeado">NUBANK [BR]
                    </a>
                </li>
                <li>
                    <a href="#" class="">Home</a>
                </li>
                <li>
                    <a href="#" class="">Saldos</a>
                </li>
                <li>
                    <a href="#" class="">Extratos</a>
                </li>
                <li>
                    <a href="index.jsp" class="closeRight">
                        <input type="button" value="X" class="bntClose">
                    </a>
                </li>
            </ul>

        </div>

        <section id="sistemaSection" class="main-content wallpaper">

            <div id="dadosContaCorrentDiv">

                <h2 id="dadosContaCorrentH">Saldo Conta-Corrente</h2>

                <p id="warningP">Acompanhe e gerencie seu dinheiro com facilidade!</p>

                <table class="tableResponse">

                    <tr>
                        <td class="alinhaDireita">Nome:</td>
                        <td>${requestScope.acessoUsuario.nome}</td>
                    </tr>                                    

                </table>

            </div>


        </section>

    </body>
</html>
