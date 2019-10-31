<%-- 
    Document   : listagem
    Created on : 20/10/2019, 22:43:20
    Author     : atila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Estados Cadastrados</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"/>
    </head>

    <body>
        <h1>Estados Cadastrados</h1>

        <p><a href="${pageContext.request.contextPath}/formularios/estados/novo.jsp">Novo Estado</a></p>

        <table>

            <thread>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Sigla</th>
                    <th>Alterar</th>
                    <th>Excluir</th>                   
                </tr>
            </thread>

            <tbody>
                <jsp:useBean id="servicos" scope="page" class="cadastroclientes.servicos.EstadoServices">
                    <c:forEach items="${servicos.todos}" var="estado">
                        <tr>
                            <td>${estado.id}</td>
                            <td>${estado.nome}</td>
                            <td>${estado.sigla}</td>
                            <td><a href="${pageContext.request.contextPath}/processaEstados?acao=prepAlteracao&id=${estado.id}">Alterar</a></td>
                            <td><a href="${pageContext.request.contextPath}/processaEstados?acao=prepExclusao&id=${estado.id}">Excluir</a></td>
                        </tr>                    
                    </c:forEach>
                </jsp:useBean>
            </tbody>
        </table>

        <p><a href="${pageContext.request.contextPath}/formularios/estados/novo.jsp">Novo Estado</a></p>
        <p><a href="${pageContext.request.contextPath}/index.jsp">Tela Principal</a></p>

    </body>
</html>
