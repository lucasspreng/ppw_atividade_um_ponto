<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Nubank</title>
        <link rel="stylesheet" href="assets/css/formStyle.css">
        <link rel="stylesheet" href="assets/css/main.css">
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
            
            <div class="divFormCadastro">
                
                <form class="formCadastro" method="POST" action="processaDadosCliente">
                    
                    <div>
                        <label for="nome">Nome:</label>
                        <br>
                        <input type="text" id="nome" name="nome">
                    </div>
                    
                    <div>
                        <label for="endereco">Endereço:</label>
                        <br>
                        <input type="text" id="endereco" name="endereco">
                    </div>
                    
                    <div>
                        <label for="bairro">Bairro:</label>
                        <br>
                        <input type="text" id="bairro" name="bairro" style="width: 67%;">
                        <label for="numero">Número:</label>
                        <input type="text" id="numero" name="numero" style="width: 15%;">
                    </div>
                    
                    <div>
                        <label for="cidade">Cidade:</label>
                        <br>
                        <input type="text" id="cidade" name="cidade" style="width: 84%;">
                        <label for="uf">UF:</label>
                        <input type="text" id="uf" name="uf" style="width: 5%;">
                    </div>
                    
                    <div>
                        <label for="email">Email:</label>
                        <br>
                        <input type="text" id="email" name="email" placeholder="email@email.com">
                    </div>
                    
                    <div>
                        <label for="senha">Senha:</label>
                        <br>
                        <input type="password" id="senha" name="senha" placeholder="********">
                    </div>
                    
                    <button class="registerBtn">CADASTRAR</button>
                    
                    <input id="inputAcao" name="inputAcao" type="hidden" value="cliente" />
                    
                </form>
                
            </div>
            
            <div class="divLogoNu">
                <img src="assets/img/logoNu.jpg" alt="Logo NuBank">			
            </div>
            
        </section>
        
    </body>
</html>
