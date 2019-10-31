<%-- 
    Document   : alterar
    Created on : 22/10/2019, 01:24:06
    Author     : atila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Cidade</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"/>
    </head>
    <body>
        <h1>Alterar Cidade</h1>
        
        <form method="post" 
              action="${pageContext.request.contextPath}/processaCidades">
        
            <input name="acao" type="hidden" value="alterar">
            <input name="id" type="hidden" value="${requestScope.cidade.id}">
            
            <table>
                
                <tr>
                    <td class="alinhaDireita">Nome: </td>
                    <td>
                        <input name="nome" type="text" size="20" value="${requestScope.cidade.nome}"
                    </td>
                </tr>
                <tr>
                    <td>
                        <jsp:useBean id="servicos" scope="page" class="cadastroclientes.servicos.EstadoServices">
                            
                            <select name="idEstado">
                                <c:forEach items="${servicos.todos}" var="estado">                                    
                                    <c:choose>
                                        <c:when test="${requestScope.cidade.estado.id eq estado.id}">
                                            <option value="${estado.id}" selected="true">${estado.nome} - ${estado.sigla}</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="${estado.id}">${estado.nome} - ${estado.sigla}</option>
                                        </c:otherwise>
                                    </c:choose>                              
                                </c:forEach>
                            </select>
                            
                        </jsp:useBean>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="${pageContext.request.contextPath}/formularios/cidades/listagem.jsp">Voltar</a>
                    </td>
                    <td class="alinhaDireita">
                        <input type="submit" value="alterar">
                    </td>
                </tr>
            </table>            
            
            
        </form>
        
    </body>
</html>
