<%-- 
    Document   : novo
    Created on : 21/10/2019, 00:13:37
    Author     : atila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Estado</title>
         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"/>
    </head>
    <body>
        <h1>Novo Estado</h1>
        
        <form method="post" 
              action="${pageContext.request.contextPath}/processaEstados">
        
            <input name="acao" type="hidden" value="criar">
            
            <table>
                <tr>
                    <td class="alinhaDireita">Nome: </td>
                    <td>
                        <input name="nome" type="text" size="3">
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Sigla: </td>
                    <td>
                        <input name="sigla" type="text" size="3">
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="${pageContext.request.contextPath}/formularios/estados/listagem.jsp">Voltar</a>
                    </td>
                    <td class="alinhaDireita">
                        <input type="submit" value="salvar">
                    </td>
                </tr>
            </table>
            
        </form>
        
    </body>
</html>
