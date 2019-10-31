<%-- 
    Document   : listagem
    Created on : 21/10/2019, 23:26:45
    Author     : atila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cidades Cadastradas</title>
    </head>
    <body>
        <h1>Cidades Cadastradas</h1>

        <p><a href="${pageContext.request.contextPath}/formularios/cidades/novo.jsp">Nova Cidade</a></p>

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
                <jsp:useBean id="servicos" scope="page" class="cadastroclientes.servicos.CidadeServices">
                <c:forEach items="${servicos.todos}" var="cidade">
                    <tr>
                        <td>${cidade.id}</td>
                        <td>${cidade.nome}</td>
                        <td>${cidade.estado.sigla}</td>
                        <td><a href="${pageContext.request.contextPath}/processaCidades?acao=prepAlteracao&id=${cidade.id}">Alterar</a></td>
                        <td><a href="${pageContext.request.contextPath}/processaCidades?acao=prepExclusao&id=${cidade.id}">Excluir</a></td>
                    </tr>                    
                </c:forEach>
            </jsp:useBean>
        </tbody>
    </table>

    <p><a href="${pageContext.request.contextPath}/formularios/cidades/novo.jsp">Nova Cidade</a></p>
    <p><a href="${pageContext.request.contextPath}/index.jsp">Tela Principal</a></p>


</body>
</html>
