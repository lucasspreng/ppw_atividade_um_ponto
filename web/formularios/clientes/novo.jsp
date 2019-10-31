<%-- 
    Document   : novo
    Created on : 22/10/2019, 17:20:51
    Author     : atila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Cliente</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"/>
    </head>
    <body>
        <h1>Novo Cliente</h1>
        
        <form method="post" 
              action="${pageContext.request.contextPath}/processaCidades">
            <input type="hidden" name="acao" value="criar">
            
            <table>
                <tr>
                    <td class="alinhaDireita">Nome: </td>
                    <td>
                        <input name="nome" type="text" size="20">
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Sobrenome: </td>
                    <td>
                        <input name="sobrenome" type="text" size="20">
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Data de Nascimento <br> (dd/mm/aaaa): </td>
                    <td>
                        <input name="nascimento" type="text" size="8">
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">CPF: </td>
                    <td>
                        <input name="cpf" type="text" size="13">
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Email: </td>
                    <td>
                        <input name="email" type="text" size="20">
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Logradouro: </td>
                    <td>
                        <input name="logradouro" type="text" size="25">
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Número: </td>
                    <td>
                        <input name="numero" type="text" size="6">
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Bairro: </td>
                    <td>
                        <input name="bairro" type="text" size="15">
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">CEP: </td>
                    <td>
                        <input name="cep" type="text" size="7">
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Cidade: </td>
                    <td>
                        <jsp:useBean id="servicos" scope="page" class="cadastroclientes.servicos.CidadeServices">
                            
               
                            <select name="idCidade">
                                <c:forEach items="${servicos.todos}" var="cidade">
                                    <option value="${cidade.id}">${cidade.nome}</option>
                                </c:forEach>
                            </select>
                            
                        </jsp:useBean>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="${pageContext.request.contextPath}/formularios/clientes/listagem.jsp">Voltar</a>
                    </td>
                    <td class="alinhaDireita">
                        <input type="submit" value="salvar">
                    </td>
                </tr>
            </table>
        
        </form>
        
    </body>
</html>
