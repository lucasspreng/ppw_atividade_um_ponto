<%-- 
    Document   : excluir
    Created on : 22/10/2019, 22:47:29
    Author     : atila
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Cliente</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"/>
    </head>
    <body>
        <h1>Excluir Cliente</h1>
        
        <form method="post" 
              action="${pageContext.request.contextPath}/processaCidades">
        
            <input type="hidden" name="acao" value="excluir">
            <input type="hidden" name="id" value="${requestScope.cliente.id}">
            
            <table>
                <tr>
                    <td class="alinhaDireita">Nome: </td>
                    <td>${requestScope.cliente.nome}</td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Sobrenome: </td>
                    <td>${requestScope.cliente.sobrenome}</td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Data de Nascimento: <br> (dd/mm/aaaa)</td>
                    <td>
                        <fmt:formatDate pattern="dd/MM/yyyy" value="${requestScope.cliente.dataNascimento}">
                            
                        </fmt:formatDate>
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">CPF: </td>
                    <td>${requestScope.cliente.cpf}</td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Email: </td>
                    <td>${requestScope.cliente.email}</td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Logradouro: </td>
                    <td>${requestScope.cliente.logradouro}</td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Número: </td>
                    <td>${requestScope.cliente.numero}</td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Bairro: </td>
                    <td>${requestScope.cliente.bairro}</td>
                </tr>
                <tr>
                    <td class="alinhaDireita">CEP: </td>
                    <td>${requestScope.cliente.cep}</td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Cidade: </td>
                    <td>${requestScope.cliente.cidade.nome}</td>
                </tr>
                <tr>
                    <td>
                        <a href="${pageContext.request.contextPath}/formularios/clientes/listagem.jsp">Voltar</a>
                    </td>
                    <td class="alinhaDireita">
                        <input type="submit" value="excluir">
                    </td>
                </tr>
            </table>
        
        </form>
        
    </body>
</html>
