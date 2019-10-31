<%-- 
    Document   : novo
    Created on : 21/10/2019, 23:46:06
    Author     : atila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"/>
    </head>
    <body>
        <h1>Nova Cidade</h1>

        <form method="post" 
              action="${pageContext.request.contextPath}/processaCidades">

            <input name="acao" type="hidden" value="criar">

            <table>
                <tr>
                    <td class="alinhaDireita">Nome: </td>
                    <td>
                        <input name="nome" type="text" size="3">
                    </td>
                </tr>
                <tr>
                    <td class="alinhaDireita">Estado: </td>
                    <td>
                        <jsp:useBean id="servicos" scope="page" class="cadastroclientes.servicos.EstadoServices">
                            <select name="idEstado">
                                <c:forEach items="${servicos.todos}" var="estado">
                                    <option value="${estado.id}">${estado.nome} - ${estado.sigla}</option>
                                </c:forEach>
                            </select>
                        </jsp:useBean>
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
