<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Nubank</title>
        <link rel="stylesheet" href="assets/css/main.css">
        <link rel="stylesheet" href="assets/css/showDataStyle.css">

    </head>
    <body>

        <div class="navbar">
            <ul>
                <li>
                    <a href="#" class="acessoLeft"><img src="assets/img/padlock_vectorized.png" class="cadeado"><span class="acesseInternetBanking">BEM VINDO AO </span><span class="internetBanking">INTERNET BANKING</span>
                    </a>
                </li>
                <li>
                    <a href="index.jsp" class="closeRight">
                        <input type="button" value="X" class="bntClose">
                    </a>
                </li>
            </ul>
        </div>

        <section class="MainContent WallPaper">

            <div class="divResponse">

                <h1>Parabéns!</h1>

                <table class="tableResponse">

                    <tr>
                        <td class="alinhaDireita">Nome:</td>
                        <td>${requestScope.clienteCadastrado.nome}</td>
                    </tr>

                    <tr>
                        <td class="alinhaDireita">Endereço:</td>
                        <td>${requestScope.clienteCadastrado.endereco}</td>
                    </tr>

                    <tr>
                        <td class="alinhaDireita">Bairro:</td>
                        <td>${requestScope.clienteCadastrado.bairro}</td>
                    </tr>

                    <tr>
                        <td class="alinhaDireita">Número:</td>
                        <td>${requestScope.clienteCadastrado.numero}</td>
                    </tr>

                    <tr>
                        <td class="alinhaDireita">Cidade:</td>
                        <td>${requestScope.clienteCadastrado.cidade}</td>
                    </tr>

                    <tr>
                        <td class="alinhaDireita">UF:</td>
                        <td>${requestScope.clienteCadastrado.uf}</td>
                    </tr>

                    <tr>
                        <td class="alinhaDireita">E-mail:</td>
                        <td>${requestScope.clienteCadastrado.email}</td>
                    </tr>

                </table>

            </div>

        </section>
    </body>
</html>
