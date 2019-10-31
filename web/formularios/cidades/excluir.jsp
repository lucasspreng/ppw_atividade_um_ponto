<%-- 
    Document   : excluir
    Created on : 22/10/2019, 13:52:49
    Author     : atila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Cidade</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"/>
    </head>
    <body>
        <h1>Excluir Cidade</h1>

        <form method="post" 
              action="${pageContext.request.contextPath}/processaCidades">

            <input name="acao" type="hidden" value="alterar">
            <input name="id" type="hidden" value="${requestScope.cidade.id}">
            
            
            <table>
                
                <tr>
                    <td class="alinhaDireita">Nome: </td>
                    <td>${requestScope.cidade.nome}</td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Estado: </td>
                    <td>${requestScope.cidade.estado.nome} - ${requestScope.cidade.estado.sigla}</td>
                </tr>
                <tr>
                    <td>
                        <a href="${pageContext.request.contextPath}/formularios/cidades/listagem.jsp">Voltar</a>
                    </td>
                    <td class="alinhaDireita">
                        <input type="submit" value="excluir">
                    </td>
                </tr>
                
            </table>
        </form>

    </body>
</html>
