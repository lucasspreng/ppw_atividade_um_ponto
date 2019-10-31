<%-- 
    Document   : alterar
    Created on : 21/10/2019, 13:24:09
    Author     : atila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Estado</title>
         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"/>
    </head>
    <body>
        <h1>Alterar Estado</h1>
        
        <form method="post" 
              action="${pageContext.request.contextPath}/processaEstados">
        
            <input name="acao" value="alterar" type="hidden">
            <input name="id" type="hidden" value="${requestScope.estado.id}">
            
            <table>
                
                <tr>
                    <td class="alinhaDireita">Nome: </td>
                    <td>
                        <input type="text" name="nome" size="20" value="${requestScope.estado.nome}">
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Sigla: </td>
                    <td>
                        <input name="sigla" type="text" size="3" value="${requestScope.estado.sigla}">
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="${pageContext.request.contextPath}/formularios/estados/listagem.jsp">Voltar</a>
                    </td>
                    <td class="alinhaDireita">
                        <input type="submit" value="alterar">
                    </td>
                </tr>
            </table>
        </form>
        
    </body>
</html>
